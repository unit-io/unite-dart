part of unite_messaging;

class ConnectionHandler {
  Options opts;
  int contract;
  MessageIdentifiers messageIds; // local identifier of messages
  int connID; // Theunique id of the connection.
  Map<int, MessageHandler> callbacks;
  Connection conn;

  /// The Handler that is managing the connection to the remote server.
  @protected
  dynamic connectionHandler;
  // ServerConnection serverConn;

  /// Time when the keepalive session was last refreshed
  DateTime lastTouched;

  /// Time when the session received any packer from client
  DateTime lastAction;

  final waitGroup = <Future>[];
  Timer keepAliveTimer;
  int _closed;

  final send = StreamController<PacketAndResult>();

  final pub = StreamController<Publish>();

  final msg = StreamController<Message>();

  final EventChannel<Message> _eventChannel = EventChannel<Message>();

  EventChannel<Message> get eventChannel => _eventChannel;

  Future<bool> newConnection(Connection conn, Uri uri, Duration timeout) async {
    this.conn = conn;
    return connectionHandler.newConnection(uri, timeout);
  }

  /// Connect takes a connected net.Conn and performs the initial handshake. Paramaters are:
  /// conn - Connected net.Conn
  /// cm - Connect Packet
  Future<int> _connect(Connect cm) async {
    try {
      var m = cm.encode();
      await connectionHandler.write(m);
      if (await connectionHandler.hasNext()) {
        await connectionHandler.next();
      }
    } on Exception catch (e) {
      rethrow;
    }
    return await verifyCONNACK();
  }

  /// This function is only used for receiving a connack
  /// when the connection is first started.
  /// This prevents receiving incoming data while resume
  /// is in progress if clean session is false.
  Future<int> verifyCONNACK() async {
    Connack ca = await Packet.readPacket(connectionHandler);
    if (ca.connack.returnCode == ConnectReturnCode.Accepted.index) {
      connID = ca.connack.connID;
      messageIds.reset(connID);
      return ca.connack.returnCode;
    }

    return ca.connack.returnCode;
  }

  /// readLoop reads incoming messages from conn.
  Future<void> readLoop() async {
    // await for (var inMsg in serverConn.stream) {
    //   serverConn.inPacket.sink.add(inMsg);
    while (await connectionHandler.hasNext()) {
      await connectionHandler.next();
      var msg = await Packet.readPacket(connectionHandler);
      connectionHandler.shrink();
      handler(msg);
    }
  }

  /// handler handles inbound messages.
  handler(Packet msg) {
    conn.updateLastAction();

    switch (msg.type()) {
      case MessageType.PINGREQ:
        conn.updateLastTouched();
        break;
      case MessageType.SUBACK:
        var mId = conn.inboundID(msg.getInfo().messageID);
        messageIds.getType(mId).flowComplete();
        messageIds.freeID(mId);
        break;
      case MessageType.UNSUBACK:
        var mId = conn.inboundID(msg.getInfo().messageID);
        messageIds.getType(mId).flowComplete();
        messageIds.freeID(mId);
        break;
      case MessageType.PUBLISH:
        pub.sink.add(msg);
        break;
      case MessageType.PUBACK:
        var mId = conn.inboundID(msg.getInfo().messageID);
        messageIds.getType(mId).flowComplete();
        messageIds.freeID(mId);
        break;
      case MessageType.PUBREC:
        var p = Pubrel();
        p.pubrel.messageID = msg.getInfo().messageID;
        p.pubrel.qos = msg.getInfo().qos;
        send.sink.add(PacketAndResult(p));
        break;
      case MessageType.PUBREL:
        var p = Pubcomp();
        p.pubcomp.messageID = msg.getInfo().messageID;
        send.sink.add(PacketAndResult(p));
        break;
      case MessageType.PUBCOMP:
        var mId = conn.inboundID(msg.getInfo().messageID);
        messageIds.getType(mId).flowComplete();
        messageIds.freeID(mId);
        break;
    }
  }

  Future<void> writeLoop() async {
    send.stream.listen((msg) {
      switch (msg.p.type()) {
        case MessageType.PUBLISH:
          if (msg.p.getInfo().qos == 0) {
            msg.r.flowComplete();
            var mId = conn.inboundID(msg.p.getInfo().messageID);
            messageIds.freeID(mId);
          }
          break;
        case MessageType.DISCONNECT:
          msg.r.flowComplete();
          var mId = conn.inboundID(msg.p.getInfo().messageID);
          messageIds.freeID(mId);
          break;
      }
      var m = msg.p.encode();
      connectionHandler.write(m);
    });
  }

  Future<void> dispatcher() async {
    // dispatch message to default callback function
    if (callbacks.length > 0) {
      var handler = callbacks[0];
      if (handler != null) {
        handler(conn, msg.stream);
      }
    }
    pub.stream.listen((pubMsg) {
      var m = Message.messageFromPublish(pubMsg, ack(this, pubMsg));
      eventChannel.notify(m);
      if (msg?.hasListener) {
        msg.sink.add(m);
      }
    });
  }

  /// keepAlive - Send ping when connection unused for set period
  /// connection passed in to avoid race condition on shutdown
  Future<void> keepAlive() async {
    int pingInterval;
    var pingSent = conn.timeNow();

    if (opts.keepAlive > 10) {
      pingInterval = 5;
    } else {
      pingInterval = opts.keepAlive ~/ 2;
    }

    keepAliveTimer =
        await Timer.periodic(Duration(seconds: pingInterval), (timer) async {
      var live = conn.timeNow().add(-Duration(seconds: opts.keepAlive));
      var timeout = conn.timeNow().add(-opts.pingTimeout);

      if (lastAction.isAfter(live) && lastTouched.isBefore(timeout)) {
        var ping = Pingreq();
        var m = ping.encode();
        connectionHandler.write(m);
        pingSent = conn.timeNow();
      }
      if (lastTouched.isBefore(timeout) && pingSent.isBefore(timeout)) {
        await conn
            .internalConnLost(); // no harm in calling this if the connection is already down (better than stopping!)
        timer.cancel();
      }
    });
  }

  /// ack acknowledges a packet
  Function() ack(Connection c, Publish packet) {
    return () {
      switch (Qos.values[packet.pub.qos]) {
        case Qos.exactlyOnce:
          var p = Pubrec();
          p.pubrec.messageID = packet.pub.messageID;
          p.pubrec.qos = packet.pub.qos;
          send.sink.add(PacketAndResult(p));
          break;
        case Qos.atLeastOnce:
          var p = Puback();
          p.puback.messageID = packet.pub.messageID;
          send.sink.add(PacketAndResult(p));
          break;
        case Qos.atMostOnce:
          // do nothing, since there is no need to send an ack packet back
          break;
      }
    };
  }
}

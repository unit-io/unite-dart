part of unite_messaging;

/// Various constant parts of the Client Connection.
/// MasterContract contract is default contract used for topics if client program does not specify Contract in the request
const MasterContract = 3376684800;

abstract class IClientConnection {
  /// connect will create a connection to the server
  void connect();

  /// disconnect will end the connection with the server, but not before waiting
  /// the client wait group is done.
  void disconnect();

  /// publish will publish a message with the specified QoS and content
  /// to the specified topic.
  Result publish(String topic, String payload,
      {qos = Qos.atLeastOnce, retain = false});

  /// subscribe starts a new subscription. Provide a MessageHandler to be executed when
  /// a message is published on the topic provided, or nil for the default handler
  Result subscribe(String topic, {qos = Qos.atLeastOnce});

  /// unsubscribe will end the subscription from each of the topics provided.
  /// Messages published to those topics from other clients will no longer be
  /// received.
  Result unsubscribe(List<String> topics);
}

class ClientConnection
    with ClientConnectionHandler
    implements IClientConnection {
  ClientConnection(String target, String clientID, Options opts) {
    // set default options
    this.opts = opts.withDefaultOptions();
    this.contract = MasterContract;
    this.messageIds = MessageIdentifiers();
    this.callbacks = Map<int, MessageHandler>();

    this.opts.addServer(target);
    this.opts.setClientID(clientID);
    this.callbacks[0] = opts.defaultMessageHandler;
  }

  /// The stream on which all subscribed topic messages are published to.
  Stream<List<Message>> get messageStream => eventChannel?.changes;

  void cancelTimer() {
    keepAliveTimer.cancel();
  }

  Future<void> close() async {
    if (!setClosed()) {
      // error disconnecting client.
      return;
    }

    await Future.wait(waitGroup);

    cancelTimer();
    serverConn.close();
    send.close();
    pub.close();
  }

  /// Connect will create a connection to the server
  /// The context will be used in the grpc stream connection.
  Future<Result> connect() async {
    var r = ConnectResult(); // Connect to the server
    if (opts.servers.length == 0) {
      r.setError("no servers defined to connect to");
      // no servers defined to connect to.
      return r;
    }

    try {
      var rc = await attemptConnection();
      r.returnCode = rc.index;
      if (rc != ConnectReturnCode.Accepted) {
        r.setError("failed to connect to messaging server");
        throw "failed to connect to messaging server, $rc";
      }
    } on Exception catch (e) {
      r.setError(e.toString());
      rethrow;
    }
    setConnected();

    if (opts.keepAlive != 0) {
      updateLastAction();
      updateLastTouched();
      waitGroup.add(keepAlive());
    }

    readLoop(); // process incoming messages
    waitGroup.add(writeLoop()); // send messages to servers
    dispatcher(); // dispatch messages to client

    return r;
  }

  Future<ConnectReturnCode> attemptConnection() async {
    int returnCode;
    for (var uri in opts.servers) {
      try {
        var channel = ClientChannel(uri.host,
            port: uri.port,
            options: const ChannelOptions(
                credentials: ChannelCredentials.insecure()));

        // get Connect message from options.
        var cm = Message.newConnectMsgFromOptions(opts, uri);
        returnCode = await _connect(this, channel, cm);
        if (returnCode == ConnectReturnCode.Accepted.index) {
          break;
        }
      } on Exception catch (e) {
        final message =
            'Connect: The connection to the unite server ${uri.host}:${uri.port} could not be made.';
        throw NoConnectionException(message);
      }
      if (serverConn.channel != null) {
        serverConn.close();
      }
    }
    return ConnectReturnCode.values[returnCode];
  }

  /// disconnect will disconnect the connection to the server
  Future<void> disconnect() async {
    if (isClosed()) {
      // Disconnect() called but not connected
      return;
    }

    var p = Disconnect();
    var r = DisconnectResult();
    send.sink.add(PacketAndResult(p, r: r));
    r.get(opts.writeTimeout);

    await close();
    messageIds.cleanUp();
  }

  /// internalConnLost cleanup when connection is lost or an error occurs
  Future<void> internalConnLost() async {
    // It is possible that internalConnLost will be called multiple times simultaneously
    // (including after sending a DisconnectPacket) as such we only do cleanup etc if the
    // routines were actually running and are not being disconnected at users request
    if (!isClosed()) {
      if (opts.cleanSession) {
        messageIds.cleanUp();
      }
      if (opts.connectionLostHandler != null) {
        opts.connectionLostHandler(this);
      }
    }

    await close();
  }

  /// publish will publish a message with the specified QoS and content
  /// to the specified topic.
  Result publish(String topic, String payload,
      {qos = Qos.atLeastOnce, retain = false}) {
    var r = PublishResult();
    if (isClosed()) {
      r.setError("error not connected");
      return r;
    }

    var fh = FixedHeader(pbx.MessageType.PUBLISH, 0);
    var p = Publish();
    p.pub.topic = topic;
    p.pub.payload = payload;
    p.pub.qos = qos.index;

    if (p.pub.qos != 0 && p.pub.messageID == 0) {
      var mID = messageIds.nextID(r);
      p.pub.messageID = outboundID(mID);
    }
    var publishWaitTimeout = opts.writeTimeout;
    if (publishWaitTimeout == 0) {
      publishWaitTimeout = opts.writeTimeout;
    }

    send.sink.add(PacketAndResult(p, r: r));

    return r;
  }

  /// Subscribe starts a new subscription. Provide a MessageHandler to be executed when
  /// a message is published on the topic provided.
  Result subscribe(String topic, {qos = Qos.atLeastOnce}) {
    var r = SubscribeResult();
    if (isClosed()) {
      r.setError("error not connected");
      return r;
    }

    var s = Subscribe();
    var sub = pbx.Subscriber();
    sub.topic = topic;
    sub.qos = qos.index;
    s.sub.subscribers.add(sub);

    if (s.sub.messageID == 0) {
      var mID = messageIds.nextID(r);
      s.sub.messageID = outboundID(mID);
    }
    var subscribeWaitTimeout = opts.writeTimeout;
    if (subscribeWaitTimeout == 0) {
      subscribeWaitTimeout = Duration(seconds: 30);
    }

    send.sink.add(PacketAndResult(s, r: r));

    return r;
  }

  /// Unsubscribe will end the subscription from each of the topics provided.
  /// Messages published to those topics from other clients will no longer be
  /// received.
  Result unsubscribe(List<String> topics) {
    var r = UnsubscribeResult();
    if (isClosed()) {
      r.setError("error not connected");
      return r;
    }

    var u = Unsubscribe();
    final subs = List<pbx.Subscriber>();
    for (var topic in topics) {
      var sub = pbx.Subscriber();
      sub.topic = topic;
      subs.add(sub);
    }
    u.unsub.subscribers.addAll(subs);
    if (u.unsub.messageID == 0) {
      var mID = messageIds.nextID(r);
      u.unsub.messageID = outboundID(mID);
    }
    var unsubscribeWaitTimeout = opts.writeTimeout;
    if (unsubscribeWaitTimeout == 0) {
      unsubscribeWaitTimeout = Duration(seconds: 30);
    }

    send.sink.add(PacketAndResult(u, r: r));

    return r;
  }

  /// TimeNow returns current wall time in UTC rounded to milliseconds.
  DateTime timeNow() {
    return DateTime.now();
  }

  int inboundID(int id) {
    // return MID(c.connID - ((id << 4) | uint32(1)))
    return (connID - id);
  }

  int outboundID(int mid) {
    // return c.connID - ((uint32(mid) << 4) | uint32(0))
    return (connID - mid);
  }

  void updateLastAction() {
    if (opts.keepAlive != 0) {
      lastAction = timeNow();
    }
  }

  void updateLastTouched() {
    lastTouched = timeNow();
  }

  /// Set connected flag; return true if not already connected.
  bool setConnected() {
    if (_closed == 0) {
      return true;
    }
    _closed = 0;
    return false;
  }

  /// Set closed flag; return true if not already closed.
  bool setClosed() {
    if (_closed == 1) {
      return false;
    }
    _closed = 1;
    return true;
  }

  /// Check whether connection was closed.
  bool isClosed() {
    return _closed != 0;
  }
}

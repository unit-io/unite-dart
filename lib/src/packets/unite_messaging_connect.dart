part of unite_messaging;

class Connect implements Packet {
  Connect() {
    conn = pbx.Conn();
  }
  pbx.Conn conn;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.CONNECT.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, 0);
  }

  ByteBuffer encode() {
    final data = conn.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.CONNECT, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Conn();
    pkt.mergeFromBuffer(data);

    var c = Connect();
    c.conn = pkt.clone();

    return c;
  }
}

class Connack implements Packet {
  Connack() {
    connack = pbx.Connack();
  }

  pbx.Connack connack;

  int _returnCode;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.CONNACK.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, 0);
  }

  ByteBuffer encode() {
    final data = connack.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.CONNACK, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Connack();
    pkt.mergeFromBuffer(data);

    var c = Connack();
    c.connack = pkt.clone();

    return c;
  }
}

class Pingreq implements Packet {
  Pingreq() {
    pingreq = pbx.Pingreq();
  }
  pbx.Pingreq pingreq;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PINGREQ.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, 0);
  }

  ByteBuffer encode() {
    ByteBuffer msg;

    var data = pingreq.writeToBuffer();

    var fh = FixedHeader(pbx.MessageType.PINGREQ, data.length);
    msg = fh.pack();
    msg.addAll(data);
    return msg;
  }
}

class Pingresp implements Packet {
  Pingresp() {
    pingresp = pbx.Pingresp();
  }
  pbx.Pingresp pingresp;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PINGRESP.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, 0);
  }

  ByteBuffer encode() {
    ByteBuffer msg;

    var data = pingresp.writeToBuffer();

    var fh = FixedHeader(pbx.MessageType.PINGRESP, data.length);
    msg = fh.pack();
    msg.addAll(data);
    return msg;
  }
}

class Disconnect implements Packet {
  Disconnect() {
    disconn = pbx.Disconnect();
  }
  pbx.Disconnect disconn;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.DISCONNECT.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, 0);
  }

  ByteBuffer encode() {
    ByteBuffer msg;

    var data = disconn.writeToBuffer();

    var fh = FixedHeader(pbx.MessageType.DISCONNECT, data.length);
    msg = fh.pack();
    msg.addAll(data);
    return msg;
  }
}

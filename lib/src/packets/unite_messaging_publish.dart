part of unite_messaging;

class Publish implements Packet {
  Publish() {
    pub = pbx.Publish();
  }
  pbx.Publish pub;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PUBLISH.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(pub.qos, pub.messageID);
  }

  ByteBuffer encode() {
    final data = pub.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.PUBLISH, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Publish();
    pkt.mergeFromBuffer(data);

    var p = Publish();
    p.pub = pkt.clone();

    return p;
  }
}

class Puback implements Packet {
  Puback() {
    puback = pbx.Puback();
  }
  pbx.Puback puback;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PUBACK.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, puback.messageID);
  }

  ByteBuffer encode() {
    final data = puback.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.PUBACK, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Puback();
    pkt.mergeFromBuffer(data);

    var p = Puback();
    p.puback = pkt.clone();

    return p;
  }
}

class Pubrec implements Packet {
  Pubrec() {
    pubrec = pbx.Pubrec();
  }
  pbx.Pubrec pubrec;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PUBREC.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(pubrec.qos, pubrec.messageID);
  }

  ByteBuffer encode() {
    final data = pubrec.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.PUBREC, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Pubrec();
    pkt.mergeFromBuffer(data);

    var p = Pubrec();
    p.pubrec = pkt.clone();

    return p;
  }
}

class Pubrel implements Packet {
  Pubrel() {
    pubrel = pbx.Pubrel();
  }
  pbx.Pubrel pubrel;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PUBREL.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(pubrel.qos, pubrel.messageID);
  }

  ByteBuffer encode() {
    final data = pubrel.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.PUBREL, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Pubrel();
    pkt.mergeFromBuffer(data);

    var p = Pubrel();
    p.pubrel = pkt.clone();

    return p;
  }
}

class Pubcomp implements Packet {
  Pubcomp() {
    pubcomp = pbx.Pubcomp();
  }
  pbx.Pubcomp pubcomp;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.PUBCOMP.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, pubcomp.messageID);
  }

  ByteBuffer encode() {
    final data = pubcomp.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.PUBCOMP, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Pubcomp();
    pkt.mergeFromBuffer(data);

    var p = Pubcomp();
    p.pubcomp = pkt.clone();

    return p;
  }
}

part of unite_messaging;

class Subscriber {
  Subscriber() {
    subscriber = pbx.Subscriber();
  }
  pbx.Subscriber subscriber;
}

class Subscribe implements Packet {
  Subscribe() {
    sub = pbx.Subscribe();
  }
  pbx.Subscribe sub;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.SUBSCRIBE.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(1, sub.messageID);
  }

  ByteBuffer encode() {
    final data = sub.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.SUBSCRIBE, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Subscribe();
    pkt.mergeFromBuffer(data);

    var s = Subscribe();
    s.sub = pkt.clone();

    return s;
  }
}

class Suback implements Packet {
  Suback() {
    suback = pbx.Suback();
  }
  pbx.Suback suback;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.SUBACK.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, suback.messageID);
  }

  ByteBuffer encode() {
    final data = suback.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.SUBACK, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Suback();
    pkt.mergeFromBuffer(data);

    var s = Suback();
    s.suback = pkt.clone();

    return s;
  }
}

class Unsubscribe implements Packet {
  Unsubscribe() {
    unsub = pbx.Unsubscribe();
  }
  pbx.Unsubscribe unsub;
  final subscribers = List<Subscriber>();

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.UNSUBSCRIBE.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(1, unsub.messageID);
  }

  ByteBuffer encode() {
    final data = unsub.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.UNSUBSCRIBE, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Unsubscribe();
    pkt.mergeFromBuffer(data);

    var u = Unsubscribe();
    u.unsub = pkt.clone();

    return u;
  }
}

class Unsuback implements Packet {
  Unsuback() {
    unsuback = pbx.Unsuback();
  }
  pbx.Unsuback unsuback;

  /// type returns the packet type.
  MessageType type() {
    return MessageType.values[pbx.MessageType.UNSUBACK.value];
  }

  /// getInfo returns Qos and MessageID of this packet.
  Info getInfo() {
    return Info(0, unsuback.messageID);
  }

  ByteBuffer encode() {
    final data = unsuback.writeToBuffer();

    final fh = FixedHeader(pbx.MessageType.UNSUBACK, data.length);
    final msg = fh.pack();
    msg.addAll(data);
    return msg;
  }

  static Packet unpack(typed.Uint8Buffer data) {
    final pkt = pbx.Unsuback();
    pkt.mergeFromBuffer(data);

    var u = Unsuback();
    u.unsuback = pkt.clone();

    return u;
  }
}

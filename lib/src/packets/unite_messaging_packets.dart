part of unite_messaging;

/// An enumeration of all packet types
enum MessageType {
  RESERVED,
  CONNECT,
  CONNACK,
  PUBLISH,
  PUBACK,
  PUBREC,
  PUBREL,
  PUBCOMP,
  SUBSCRIBE,
  SUBACK,
  UNSUBSCRIBE,
  UNSUBACK,
  PINGREQ,
  PINGRESP,
  DISCONNECT,
}

/// Enumeration of error codes returned by Connect().
enum ConnectReturnCode {
  Accepted,
  ErrRefusedBadProtocolVersion,
  ErrRefusedIDRejected,
  ErrRefusedServerUnavailable,
  ErrRefusedBadUsernameOrPassword,
  ErrRefusedNotAuthorised,
  ErrNetworkError,
  ErrProtocolViolation
}

/// Packet is the interface all our packets in the line protocol will be implementing
abstract class Packet {
  ByteBuffer encode();
  MessageType type();
  Info getInfo();

  /// readPacket unpacks the packet from the provided stream.
  static Future<Packet> readPacket(GrpcStream r) async {
    var fh = FixedHeader.internal();
    await fh.unpack(r);

    // Check for empty packets
    switch (fh.messageType) {
      case MessageType.PINGREQ:
        return Pingreq();
      case MessageType.PINGRESP:
        return Pingresp();
      case MessageType.DISCONNECT:
        return Disconnect();
    }

    final msg = await r.read(fh.messageSize);

    // unpack the body
    Packet pkt;
    switch (fh.messageType) {
      case MessageType.CONNECT:
        pkt = Connect.unpack(msg);
        break;
      case MessageType.CONNACK:
        pkt = Connack.unpack(msg);
        break;
      case MessageType.PUBLISH:
        pkt = Publish.unpack(msg);
        break;
      case MessageType.PUBACK:
        pkt = Puback.unpack(msg);
        break;
      case MessageType.PUBREC:
        pkt = Pubrec.unpack(msg);
        break;
      case MessageType.PUBREL:
        pkt = Pubrel.unpack(msg);
        break;
      case MessageType.PUBCOMP:
        pkt = Pubcomp.unpack(msg);
        break;
      case MessageType.SUBSCRIBE:
        pkt = Subscribe.unpack(msg);
        break;
      case MessageType.SUBACK:
        pkt = Suback.unpack(msg);
        break;
      case MessageType.UNSUBSCRIBE:
        pkt = Unsubscribe.unpack(msg);
        break;
      case MessageType.UNSUBACK:
        pkt = Unsuback.unpack(msg);
        break;
      default:
        return pkt;
    }

    return pkt;
  }
}

/// Info returns Qos and MessageID by the Info() function called on the Packet
class Info {
  Info(this.qos, this.messageID);

  int qos;
  int messageID;
}

class FixedHeader {
  FixedHeader.internal() {
    this.fh = pbx.FixedHeader();
  }
  FixedHeader(pbx.MessageType messageType, int remainingLength) {
    this.fh = pbx.FixedHeader();
    this.fh.messageType = messageType;
    this.fh.remainingLength = remainingLength;
  }

  pbx.FixedHeader fh;

  int get messageSize => fh.remainingLength;

  MessageType get messageType => MessageType.values[fh.messageType.value];

  ByteBuffer pack() {
    var h = fh.writeToBuffer();
    var size = encodeLength(h.length);

    var head = ByteBuffer(typed.Uint8Buffer());

    head.addAll(size);
    head.addAll(h);

    return head;
  }

  Future<void> unpack(GrpcStream r) async {
    final fhSize = await decodeLength(r);

    // read FixedHeader
    final head = await r.read(fhSize);

    fh.mergeFromBuffer(head);
  }

  static typed.Uint8Buffer encodeLength(var length) {
    var encLength = typed.Uint8Buffer();
    do {
      var digit = length % 128;
      length ~/= 128;
      if (length > 0) {
        digit |= 0x80;
      }
      encLength.add(digit);
      if (length == 0) {
        break;
      }
    } while (length == 0);
    return encLength;
  }

  static Future<int> decodeLength(GrpcStream r) async {
    int rLength = 0;
    int multiplier = 0;
    while (multiplier < 27) {
      var digit = await r.read(1);
      rLength |= (digit.single & 127) << multiplier;
      if ((digit.single & 128) == 0) {
        break;
      }
      multiplier += 7;
    }
    return rLength;
  }
}

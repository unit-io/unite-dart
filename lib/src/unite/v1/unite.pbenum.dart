///
//  Generated code. Do not modify.
//  source: unite.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MessageType extends $pb.ProtobufEnum {
  static const MessageType RESERVED = MessageType._(0, 'RESERVED');
  static const MessageType CONNECT = MessageType._(1, 'CONNECT');
  static const MessageType CONNACK = MessageType._(2, 'CONNACK');
  static const MessageType PUBLISH = MessageType._(3, 'PUBLISH');
  static const MessageType PUBACK = MessageType._(4, 'PUBACK');
  static const MessageType PUBREC = MessageType._(5, 'PUBREC');
  static const MessageType PUBREL = MessageType._(6, 'PUBREL');
  static const MessageType PUBCOMP = MessageType._(7, 'PUBCOMP');
  static const MessageType SUBSCRIBE = MessageType._(8, 'SUBSCRIBE');
  static const MessageType SUBACK = MessageType._(9, 'SUBACK');
  static const MessageType UNSUBSCRIBE = MessageType._(10, 'UNSUBSCRIBE');
  static const MessageType UNSUBACK = MessageType._(11, 'UNSUBACK');
  static const MessageType PINGREQ = MessageType._(12, 'PINGREQ');
  static const MessageType PINGRESP = MessageType._(13, 'PINGRESP');
  static const MessageType DISCONNECT = MessageType._(14, 'DISCONNECT');

  static const $core.List<MessageType> values = <MessageType> [
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
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}


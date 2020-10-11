///
//  Generated code. Do not modify.
//  source: unite.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'unite.pbenum.dart';

export 'unite.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

class Packet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Packet', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Packet._() : super();
  factory Packet() => create();
  factory Packet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Packet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Packet clone() => Packet()..mergeFromMessage(this);
  Packet copyWith(void Function(Packet) updates) => super.copyWith((message) => updates(message as Packet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Packet create() => Packet._();
  Packet createEmptyInstance() => create();
  static $pb.PbList<Packet> createRepeated() => $pb.PbList<Packet>();
  @$core.pragma('dart2js:noInline')
  static Packet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Packet>(create);
  static Packet _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class ConnInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnInfo', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..aOS(1, 'clientId')
    ..aOS(2, 'network')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  ConnInfo._() : super();
  factory ConnInfo() => create();
  factory ConnInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConnInfo clone() => ConnInfo()..mergeFromMessage(this);
  ConnInfo copyWith(void Function(ConnInfo) updates) => super.copyWith((message) => updates(message as ConnInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnInfo create() => ConnInfo._();
  ConnInfo createEmptyInstance() => create();
  static $pb.PbList<ConnInfo> createRepeated() => $pb.PbList<ConnInfo>();
  @$core.pragma('dart2js:noInline')
  static ConnInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnInfo>(create);
  static ConnInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get network => $_getSZ(1);
  @$pb.TagNumber(2)
  set network($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetwork() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetwork() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

enum InMsg_Message {
  conn, 
  pub, 
  sub, 
  notSet
}

class InMsg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, InMsg_Message> _InMsg_MessageByTag = {
    1 : InMsg_Message.conn,
    2 : InMsg_Message.pub,
    3 : InMsg_Message.sub,
    0 : InMsg_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InMsg', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Conn>(1, 'conn', subBuilder: Conn.create)
    ..aOM<Publish>(2, 'pub', subBuilder: Publish.create)
    ..aOM<Subscribe>(3, 'sub', subBuilder: Subscribe.create)
    ..hasRequiredFields = false
  ;

  InMsg._() : super();
  factory InMsg() => create();
  factory InMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InMsg clone() => InMsg()..mergeFromMessage(this);
  InMsg copyWith(void Function(InMsg) updates) => super.copyWith((message) => updates(message as InMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InMsg create() => InMsg._();
  InMsg createEmptyInstance() => create();
  static $pb.PbList<InMsg> createRepeated() => $pb.PbList<InMsg>();
  @$core.pragma('dart2js:noInline')
  static InMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InMsg>(create);
  static InMsg _defaultInstance;

  InMsg_Message whichMessage() => _InMsg_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Conn get conn => $_getN(0);
  @$pb.TagNumber(1)
  set conn(Conn v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConn() => $_has(0);
  @$pb.TagNumber(1)
  void clearConn() => clearField(1);
  @$pb.TagNumber(1)
  Conn ensureConn() => $_ensure(0);

  @$pb.TagNumber(2)
  Publish get pub => $_getN(1);
  @$pb.TagNumber(2)
  set pub(Publish v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPub() => $_has(1);
  @$pb.TagNumber(2)
  void clearPub() => clearField(2);
  @$pb.TagNumber(2)
  Publish ensurePub() => $_ensure(1);

  @$pb.TagNumber(3)
  Subscribe get sub => $_getN(2);
  @$pb.TagNumber(3)
  set sub(Subscribe v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSub() => $_has(2);
  @$pb.TagNumber(3)
  void clearSub() => clearField(3);
  @$pb.TagNumber(3)
  Subscribe ensureSub() => $_ensure(2);
}

enum OutMsg_Message {
  connack, 
  puback, 
  suback, 
  notSet
}

class OutMsg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OutMsg_Message> _OutMsg_MessageByTag = {
    1 : OutMsg_Message.connack,
    2 : OutMsg_Message.puback,
    3 : OutMsg_Message.suback,
    0 : OutMsg_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OutMsg', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Connack>(1, 'connack', subBuilder: Connack.create)
    ..aOM<Puback>(2, 'puback', subBuilder: Puback.create)
    ..aOM<Suback>(3, 'suback', subBuilder: Suback.create)
    ..hasRequiredFields = false
  ;

  OutMsg._() : super();
  factory OutMsg() => create();
  factory OutMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OutMsg clone() => OutMsg()..mergeFromMessage(this);
  OutMsg copyWith(void Function(OutMsg) updates) => super.copyWith((message) => updates(message as OutMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutMsg create() => OutMsg._();
  OutMsg createEmptyInstance() => create();
  static $pb.PbList<OutMsg> createRepeated() => $pb.PbList<OutMsg>();
  @$core.pragma('dart2js:noInline')
  static OutMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutMsg>(create);
  static OutMsg _defaultInstance;

  OutMsg_Message whichMessage() => _OutMsg_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Connack get connack => $_getN(0);
  @$pb.TagNumber(1)
  set connack(Connack v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnack() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnack() => clearField(1);
  @$pb.TagNumber(1)
  Connack ensureConnack() => $_ensure(0);

  @$pb.TagNumber(2)
  Puback get puback => $_getN(1);
  @$pb.TagNumber(2)
  set puback(Puback v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPuback() => $_has(1);
  @$pb.TagNumber(2)
  void clearPuback() => clearField(2);
  @$pb.TagNumber(2)
  Puback ensurePuback() => $_ensure(1);

  @$pb.TagNumber(3)
  Suback get suback => $_getN(2);
  @$pb.TagNumber(3)
  set suback(Suback v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSuback() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuback() => clearField(3);
  @$pb.TagNumber(3)
  Suback ensureSuback() => $_ensure(2);
}

class FixedHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FixedHeader', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..e<MessageType>(1, 'MessageType', $pb.PbFieldType.OE, protoName: 'MessageType', defaultOrMaker: MessageType.RESERVED, valueOf: MessageType.valueOf, enumValues: MessageType.values)
    ..aOB(2, 'Dup', protoName: 'Dup')
    ..a<$core.int>(3, 'Qos', $pb.PbFieldType.O3, protoName: 'Qos')
    ..aOB(4, 'Retain', protoName: 'Retain')
    ..a<$core.int>(5, 'RemainingLength', $pb.PbFieldType.O3, protoName: 'RemainingLength')
    ..hasRequiredFields = false
  ;

  FixedHeader._() : super();
  factory FixedHeader() => create();
  factory FixedHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FixedHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FixedHeader clone() => FixedHeader()..mergeFromMessage(this);
  FixedHeader copyWith(void Function(FixedHeader) updates) => super.copyWith((message) => updates(message as FixedHeader));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FixedHeader create() => FixedHeader._();
  FixedHeader createEmptyInstance() => create();
  static $pb.PbList<FixedHeader> createRepeated() => $pb.PbList<FixedHeader>();
  @$core.pragma('dart2js:noInline')
  static FixedHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FixedHeader>(create);
  static FixedHeader _defaultInstance;

  @$pb.TagNumber(1)
  MessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType(MessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dup => $_getBF(1);
  @$pb.TagNumber(2)
  set dup($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDup() => $_has(1);
  @$pb.TagNumber(2)
  void clearDup() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get qos => $_getIZ(2);
  @$pb.TagNumber(3)
  set qos($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQos() => $_has(2);
  @$pb.TagNumber(3)
  void clearQos() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get retain => $_getBF(3);
  @$pb.TagNumber(4)
  set retain($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRetain() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetain() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get remainingLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set remainingLength($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemainingLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemainingLength() => clearField(5);
}

class Conn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Conn', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..aOS(1, 'ProtoName', protoName: 'ProtoName')
    ..a<$core.int>(2, 'Version', $pb.PbFieldType.O3, protoName: 'Version')
    ..aOB(3, 'InsecureFlag', protoName: 'InsecureFlag')
    ..aOB(4, 'UsernameFlag', protoName: 'UsernameFlag')
    ..aOB(5, 'PasswordFlag', protoName: 'PasswordFlag')
    ..aOB(9, 'CleanSessFlag', protoName: 'CleanSessFlag')
    ..a<$core.int>(10, 'KeepAlive', $pb.PbFieldType.O3, protoName: 'KeepAlive')
    ..aOS(11, 'ClientID', protoName: 'ClientID')
    ..aOS(14, 'Username', protoName: 'Username')
    ..aOS(15, 'Password', protoName: 'Password')
    ..hasRequiredFields = false
  ;

  Conn._() : super();
  factory Conn() => create();
  factory Conn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Conn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Conn clone() => Conn()..mergeFromMessage(this);
  Conn copyWith(void Function(Conn) updates) => super.copyWith((message) => updates(message as Conn));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Conn create() => Conn._();
  Conn createEmptyInstance() => create();
  static $pb.PbList<Conn> createRepeated() => $pb.PbList<Conn>();
  @$core.pragma('dart2js:noInline')
  static Conn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Conn>(create);
  static Conn _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get protoName => $_getSZ(0);
  @$pb.TagNumber(1)
  set protoName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtoName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtoName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get insecureFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set insecureFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInsecureFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearInsecureFlag() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get usernameFlag => $_getBF(3);
  @$pb.TagNumber(4)
  set usernameFlag($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsernameFlag() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsernameFlag() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get passwordFlag => $_getBF(4);
  @$pb.TagNumber(5)
  set passwordFlag($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPasswordFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearPasswordFlag() => clearField(5);

  @$pb.TagNumber(9)
  $core.bool get cleanSessFlag => $_getBF(5);
  @$pb.TagNumber(9)
  set cleanSessFlag($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasCleanSessFlag() => $_has(5);
  @$pb.TagNumber(9)
  void clearCleanSessFlag() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get keepAlive => $_getIZ(6);
  @$pb.TagNumber(10)
  set keepAlive($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasKeepAlive() => $_has(6);
  @$pb.TagNumber(10)
  void clearKeepAlive() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get clientID => $_getSZ(7);
  @$pb.TagNumber(11)
  set clientID($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasClientID() => $_has(7);
  @$pb.TagNumber(11)
  void clearClientID() => clearField(11);

  @$pb.TagNumber(14)
  $core.String get username => $_getSZ(8);
  @$pb.TagNumber(14)
  set username($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(14)
  $core.bool hasUsername() => $_has(8);
  @$pb.TagNumber(14)
  void clearUsername() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get password => $_getSZ(9);
  @$pb.TagNumber(15)
  set password($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(15)
  $core.bool hasPassword() => $_has(9);
  @$pb.TagNumber(15)
  void clearPassword() => clearField(15);
}

class Connack extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Connack', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..a<$core.int>(2, 'ConnID', $pb.PbFieldType.O3, protoName: 'ConnID')
    ..hasRequiredFields = false
  ;

  Connack._() : super();
  factory Connack() => create();
  factory Connack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Connack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Connack clone() => Connack()..mergeFromMessage(this);
  Connack copyWith(void Function(Connack) updates) => super.copyWith((message) => updates(message as Connack));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Connack create() => Connack._();
  Connack createEmptyInstance() => create();
  static $pb.PbList<Connack> createRepeated() => $pb.PbList<Connack>();
  @$core.pragma('dart2js:noInline')
  static Connack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Connack>(create);
  static Connack _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get returnCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set returnCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get connID => $_getIZ(1);
  @$pb.TagNumber(2)
  set connID($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnID() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnID() => clearField(2);
}

class Pingreq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pingreq', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Pingreq._() : super();
  factory Pingreq() => create();
  factory Pingreq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pingreq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Pingreq clone() => Pingreq()..mergeFromMessage(this);
  Pingreq copyWith(void Function(Pingreq) updates) => super.copyWith((message) => updates(message as Pingreq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pingreq create() => Pingreq._();
  Pingreq createEmptyInstance() => create();
  static $pb.PbList<Pingreq> createRepeated() => $pb.PbList<Pingreq>();
  @$core.pragma('dart2js:noInline')
  static Pingreq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pingreq>(create);
  static Pingreq _defaultInstance;
}

class Pingresp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pingresp', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Pingresp._() : super();
  factory Pingresp() => create();
  factory Pingresp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pingresp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Pingresp clone() => Pingresp()..mergeFromMessage(this);
  Pingresp copyWith(void Function(Pingresp) updates) => super.copyWith((message) => updates(message as Pingresp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pingresp create() => Pingresp._();
  Pingresp createEmptyInstance() => create();
  static $pb.PbList<Pingresp> createRepeated() => $pb.PbList<Pingresp>();
  @$core.pragma('dart2js:noInline')
  static Pingresp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pingresp>(create);
  static Pingresp _defaultInstance;
}

class Disconnect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Disconnect', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..hasRequiredFields = false
  ;

  Disconnect._() : super();
  factory Disconnect() => create();
  factory Disconnect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Disconnect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Disconnect clone() => Disconnect()..mergeFromMessage(this);
  Disconnect copyWith(void Function(Disconnect) updates) => super.copyWith((message) => updates(message as Disconnect));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Disconnect create() => Disconnect._();
  Disconnect createEmptyInstance() => create();
  static $pb.PbList<Disconnect> createRepeated() => $pb.PbList<Disconnect>();
  @$core.pragma('dart2js:noInline')
  static Disconnect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Disconnect>(create);
  static Disconnect _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);
}

class Publish extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Publish', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..aOS(2, 'Topic', protoName: 'Topic')
    ..aOS(3, 'Payload', protoName: 'Payload')
    ..a<$core.int>(4, 'Qos', $pb.PbFieldType.O3, protoName: 'Qos')
    ..hasRequiredFields = false
  ;

  Publish._() : super();
  factory Publish() => create();
  factory Publish.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Publish.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Publish clone() => Publish()..mergeFromMessage(this);
  Publish copyWith(void Function(Publish) updates) => super.copyWith((message) => updates(message as Publish));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Publish create() => Publish._();
  Publish createEmptyInstance() => create();
  static $pb.PbList<Publish> createRepeated() => $pb.PbList<Publish>();
  @$core.pragma('dart2js:noInline')
  static Publish getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Publish>(create);
  static Publish _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);
  @$pb.TagNumber(3)
  set payload($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get qos => $_getIZ(3);
  @$pb.TagNumber(4)
  set qos($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQos() => $_has(3);
  @$pb.TagNumber(4)
  void clearQos() => clearField(4);
}

class Puback extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Puback', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..hasRequiredFields = false
  ;

  Puback._() : super();
  factory Puback() => create();
  factory Puback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Puback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Puback clone() => Puback()..mergeFromMessage(this);
  Puback copyWith(void Function(Puback) updates) => super.copyWith((message) => updates(message as Puback));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Puback create() => Puback._();
  Puback createEmptyInstance() => create();
  static $pb.PbList<Puback> createRepeated() => $pb.PbList<Puback>();
  @$core.pragma('dart2js:noInline')
  static Puback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Puback>(create);
  static Puback _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);
}

class Pubrec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pubrec', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..a<$core.int>(2, 'Qos', $pb.PbFieldType.O3, protoName: 'Qos')
    ..hasRequiredFields = false
  ;

  Pubrec._() : super();
  factory Pubrec() => create();
  factory Pubrec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pubrec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Pubrec clone() => Pubrec()..mergeFromMessage(this);
  Pubrec copyWith(void Function(Pubrec) updates) => super.copyWith((message) => updates(message as Pubrec));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pubrec create() => Pubrec._();
  Pubrec createEmptyInstance() => create();
  static $pb.PbList<Pubrec> createRepeated() => $pb.PbList<Pubrec>();
  @$core.pragma('dart2js:noInline')
  static Pubrec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pubrec>(create);
  static Pubrec _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get qos => $_getIZ(1);
  @$pb.TagNumber(2)
  set qos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQos() => $_has(1);
  @$pb.TagNumber(2)
  void clearQos() => clearField(2);
}

class Pubrel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pubrel', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..a<$core.int>(2, 'Qos', $pb.PbFieldType.O3, protoName: 'Qos')
    ..hasRequiredFields = false
  ;

  Pubrel._() : super();
  factory Pubrel() => create();
  factory Pubrel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pubrel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Pubrel clone() => Pubrel()..mergeFromMessage(this);
  Pubrel copyWith(void Function(Pubrel) updates) => super.copyWith((message) => updates(message as Pubrel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pubrel create() => Pubrel._();
  Pubrel createEmptyInstance() => create();
  static $pb.PbList<Pubrel> createRepeated() => $pb.PbList<Pubrel>();
  @$core.pragma('dart2js:noInline')
  static Pubrel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pubrel>(create);
  static Pubrel _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get qos => $_getIZ(1);
  @$pb.TagNumber(2)
  set qos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQos() => $_has(1);
  @$pb.TagNumber(2)
  void clearQos() => clearField(2);
}

class Pubcomp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pubcomp', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..hasRequiredFields = false
  ;

  Pubcomp._() : super();
  factory Pubcomp() => create();
  factory Pubcomp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pubcomp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Pubcomp clone() => Pubcomp()..mergeFromMessage(this);
  Pubcomp copyWith(void Function(Pubcomp) updates) => super.copyWith((message) => updates(message as Pubcomp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pubcomp create() => Pubcomp._();
  Pubcomp createEmptyInstance() => create();
  static $pb.PbList<Pubcomp> createRepeated() => $pb.PbList<Pubcomp>();
  @$core.pragma('dart2js:noInline')
  static Pubcomp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pubcomp>(create);
  static Pubcomp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);
}

class Subscriber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Subscriber', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..aOS(2, 'Topic', protoName: 'Topic')
    ..a<$core.int>(3, 'Qos', $pb.PbFieldType.O3, protoName: 'Qos')
    ..hasRequiredFields = false
  ;

  Subscriber._() : super();
  factory Subscriber() => create();
  factory Subscriber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscriber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Subscriber clone() => Subscriber()..mergeFromMessage(this);
  Subscriber copyWith(void Function(Subscriber) updates) => super.copyWith((message) => updates(message as Subscriber));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subscriber create() => Subscriber._();
  Subscriber createEmptyInstance() => create();
  static $pb.PbList<Subscriber> createRepeated() => $pb.PbList<Subscriber>();
  @$core.pragma('dart2js:noInline')
  static Subscriber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subscriber>(create);
  static Subscriber _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get qos => $_getIZ(1);
  @$pb.TagNumber(3)
  set qos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasQos() => $_has(1);
  @$pb.TagNumber(3)
  void clearQos() => clearField(3);
}

class Subscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Subscribe', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..pc<Subscriber>(2, 'Subscribers', $pb.PbFieldType.PM, protoName: 'Subscribers', subBuilder: Subscriber.create)
    ..hasRequiredFields = false
  ;

  Subscribe._() : super();
  factory Subscribe() => create();
  factory Subscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Subscribe clone() => Subscribe()..mergeFromMessage(this);
  Subscribe copyWith(void Function(Subscribe) updates) => super.copyWith((message) => updates(message as Subscribe));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subscribe create() => Subscribe._();
  Subscribe createEmptyInstance() => create();
  static $pb.PbList<Subscribe> createRepeated() => $pb.PbList<Subscribe>();
  @$core.pragma('dart2js:noInline')
  static Subscribe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subscribe>(create);
  static Subscribe _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Subscriber> get subscribers => $_getList(1);
}

class Suback extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Suback', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..p<$core.int>(2, 'Qos', $pb.PbFieldType.P3, protoName: 'Qos')
    ..hasRequiredFields = false
  ;

  Suback._() : super();
  factory Suback() => create();
  factory Suback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Suback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Suback clone() => Suback()..mergeFromMessage(this);
  Suback copyWith(void Function(Suback) updates) => super.copyWith((message) => updates(message as Suback));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Suback create() => Suback._();
  Suback createEmptyInstance() => create();
  static $pb.PbList<Suback> createRepeated() => $pb.PbList<Suback>();
  @$core.pragma('dart2js:noInline')
  static Suback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Suback>(create);
  static Suback _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get qos => $_getList(1);
}

class Unsubscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Unsubscribe', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..pc<Subscriber>(2, 'Subscribers', $pb.PbFieldType.PM, protoName: 'Subscribers', subBuilder: Subscriber.create)
    ..hasRequiredFields = false
  ;

  Unsubscribe._() : super();
  factory Unsubscribe() => create();
  factory Unsubscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unsubscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Unsubscribe clone() => Unsubscribe()..mergeFromMessage(this);
  Unsubscribe copyWith(void Function(Unsubscribe) updates) => super.copyWith((message) => updates(message as Unsubscribe));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Unsubscribe create() => Unsubscribe._();
  Unsubscribe createEmptyInstance() => create();
  static $pb.PbList<Unsubscribe> createRepeated() => $pb.PbList<Unsubscribe>();
  @$core.pragma('dart2js:noInline')
  static Unsubscribe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Unsubscribe>(create);
  static Unsubscribe _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Subscriber> get subscribers => $_getList(1);
}

class Unsuback extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Unsuback', package: const $pb.PackageName('unite'), createEmptyInstance: create)
    ..a<$core.int>(1, 'MessageID', $pb.PbFieldType.O3, protoName: 'MessageID')
    ..hasRequiredFields = false
  ;

  Unsuback._() : super();
  factory Unsuback() => create();
  factory Unsuback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unsuback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Unsuback clone() => Unsuback()..mergeFromMessage(this);
  Unsuback copyWith(void Function(Unsuback) updates) => super.copyWith((message) => updates(message as Unsuback));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Unsuback create() => Unsuback._();
  Unsuback createEmptyInstance() => create();
  static $pb.PbList<Unsuback> createRepeated() => $pb.PbList<Unsuback>();
  @$core.pragma('dart2js:noInline')
  static Unsuback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Unsuback>(create);
  static Unsuback _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageID => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);
}


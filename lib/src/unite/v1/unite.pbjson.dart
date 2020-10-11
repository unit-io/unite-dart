///
//  Generated code. Do not modify.
//  source: unite.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'RESERVED', '2': 0},
    const {'1': 'CONNECT', '2': 1},
    const {'1': 'CONNACK', '2': 2},
    const {'1': 'PUBLISH', '2': 3},
    const {'1': 'PUBACK', '2': 4},
    const {'1': 'PUBREC', '2': 5},
    const {'1': 'PUBREL', '2': 6},
    const {'1': 'PUBCOMP', '2': 7},
    const {'1': 'SUBSCRIBE', '2': 8},
    const {'1': 'SUBACK', '2': 9},
    const {'1': 'UNSUBSCRIBE', '2': 10},
    const {'1': 'UNSUBACK', '2': 11},
    const {'1': 'PINGREQ', '2': 12},
    const {'1': 'PINGRESP', '2': 13},
    const {'1': 'DISCONNECT', '2': 14},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const Packet$json = const {
  '1': 'Packet',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

const ConnInfo$json = const {
  '1': 'ConnInfo',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '10': 'clientId'},
    const {'1': 'network', '3': 2, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const InMsg$json = const {
  '1': 'InMsg',
  '2': const [
    const {'1': 'conn', '3': 1, '4': 1, '5': 11, '6': '.unite.Conn', '9': 0, '10': 'conn'},
    const {'1': 'pub', '3': 2, '4': 1, '5': 11, '6': '.unite.Publish', '9': 0, '10': 'pub'},
    const {'1': 'sub', '3': 3, '4': 1, '5': 11, '6': '.unite.Subscribe', '9': 0, '10': 'sub'},
  ],
  '8': const [
    const {'1': 'Message'},
  ],
};

const OutMsg$json = const {
  '1': 'OutMsg',
  '2': const [
    const {'1': 'connack', '3': 1, '4': 1, '5': 11, '6': '.unite.Connack', '9': 0, '10': 'connack'},
    const {'1': 'puback', '3': 2, '4': 1, '5': 11, '6': '.unite.Puback', '9': 0, '10': 'puback'},
    const {'1': 'suback', '3': 3, '4': 1, '5': 11, '6': '.unite.Suback', '9': 0, '10': 'suback'},
  ],
  '8': const [
    const {'1': 'Message'},
  ],
};

const FixedHeader$json = const {
  '1': 'FixedHeader',
  '2': const [
    const {'1': 'MessageType', '3': 1, '4': 1, '5': 14, '6': '.unite.MessageType', '10': 'MessageType'},
    const {'1': 'Dup', '3': 2, '4': 1, '5': 8, '10': 'Dup'},
    const {'1': 'Qos', '3': 3, '4': 1, '5': 5, '10': 'Qos'},
    const {'1': 'Retain', '3': 4, '4': 1, '5': 8, '10': 'Retain'},
    const {'1': 'RemainingLength', '3': 5, '4': 1, '5': 5, '10': 'RemainingLength'},
  ],
};

const Conn$json = const {
  '1': 'Conn',
  '2': const [
    const {'1': 'ProtoName', '3': 1, '4': 1, '5': 9, '10': 'ProtoName'},
    const {'1': 'Version', '3': 2, '4': 1, '5': 5, '10': 'Version'},
    const {'1': 'InsecureFlag', '3': 3, '4': 1, '5': 8, '10': 'InsecureFlag'},
    const {'1': 'UsernameFlag', '3': 4, '4': 1, '5': 8, '10': 'UsernameFlag'},
    const {'1': 'PasswordFlag', '3': 5, '4': 1, '5': 8, '10': 'PasswordFlag'},
    const {'1': 'CleanSessFlag', '3': 9, '4': 1, '5': 8, '10': 'CleanSessFlag'},
    const {'1': 'KeepAlive', '3': 10, '4': 1, '5': 5, '10': 'KeepAlive'},
    const {'1': 'ClientID', '3': 11, '4': 1, '5': 9, '10': 'ClientID'},
    const {'1': 'Username', '3': 14, '4': 1, '5': 9, '10': 'Username'},
    const {'1': 'Password', '3': 15, '4': 1, '5': 9, '10': 'Password'},
  ],
};

const Connack$json = const {
  '1': 'Connack',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ConnID', '3': 2, '4': 1, '5': 5, '10': 'ConnID'},
  ],
};

const Pingreq$json = const {
  '1': 'Pingreq',
};

const Pingresp$json = const {
  '1': 'Pingresp',
};

const Disconnect$json = const {
  '1': 'Disconnect',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
  ],
};

const Publish$json = const {
  '1': 'Publish',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Topic', '3': 2, '4': 1, '5': 9, '10': 'Topic'},
    const {'1': 'Payload', '3': 3, '4': 1, '5': 9, '10': 'Payload'},
    const {'1': 'Qos', '3': 4, '4': 1, '5': 5, '10': 'Qos'},
  ],
};

const Puback$json = const {
  '1': 'Puback',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
  ],
};

const Pubrec$json = const {
  '1': 'Pubrec',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Qos', '3': 2, '4': 1, '5': 5, '10': 'Qos'},
  ],
};

const Pubrel$json = const {
  '1': 'Pubrel',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Qos', '3': 2, '4': 1, '5': 5, '10': 'Qos'},
  ],
};

const Pubcomp$json = const {
  '1': 'Pubcomp',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
  ],
};

const Subscriber$json = const {
  '1': 'Subscriber',
  '2': const [
    const {'1': 'Topic', '3': 2, '4': 1, '5': 9, '10': 'Topic'},
    const {'1': 'Qos', '3': 3, '4': 1, '5': 5, '10': 'Qos'},
  ],
};

const Subscribe$json = const {
  '1': 'Subscribe',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Subscribers', '3': 2, '4': 3, '5': 11, '6': '.unite.Subscriber', '10': 'Subscribers'},
  ],
};

const Suback$json = const {
  '1': 'Suback',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Qos', '3': 2, '4': 3, '5': 5, '10': 'Qos'},
  ],
};

const Unsubscribe$json = const {
  '1': 'Unsubscribe',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
    const {'1': 'Subscribers', '3': 2, '4': 3, '5': 11, '6': '.unite.Subscriber', '10': 'Subscribers'},
  ],
};

const Unsuback$json = const {
  '1': 'Unsuback',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 5, '10': 'MessageID'},
  ],
};


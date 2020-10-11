part of unite_messaging;

class Message extends Event {
  Message();
  Message.messageFromPublish(Publish p, Function() ack) {
    this._topic = p.pub.topic;
    this._messageID = p.pub.messageID;
    this._payload = p.pub.payload;
    this.ack = ack;
  }
  bool _duplicate;
  Qos _qos;
  bool _retained;
  String _topic;
  int _messageID;
  String _payload;
  Function() ack;

  bool get duplicate => this.duplicate;

  Qos get qos => _qos;

  bool get retained => _retained;

  String get topic => _topic;

  int get messageID => _messageID;

  String get payload => _payload;

  static Connect newConnectMsgFromOptions(Options opts, Uri server) {
    var m = Connect();
    m.conn = pbx.Conn();
    m.conn.cleanSessFlag = opts.cleanSession;
    m.conn.clientID = opts.clientID;
    m.conn.insecureFlag = opts.insecureFlag;

    var username = opts.username;
    var password = opts.password;
    var user = server.userInfo?.split(':');
    username = user[0];
    password = user.length > 1 ? user[1] : password;

    if (username != "") {
      m.conn.usernameFlag = true;
      m.conn.username = username;
      //mustn't have password without user as well
      if (password != "") {
        m.conn.passwordFlag = true;
        m.conn.password = password;
      }
    }

    m.conn.keepAlive = opts.keepAlive;

    return m;
  }
}

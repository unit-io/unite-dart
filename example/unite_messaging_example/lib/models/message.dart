import 'package:unite_messaging/unite_messaging.dart' as unite;

class Message {
  final String topic;
  final String message;
  final unite.Qos qos;

  Message({this.topic, this.message, this.qos});
}

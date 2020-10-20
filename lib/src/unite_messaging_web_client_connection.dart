part of unite_messaging_web;

class WebClient extends Connection {
  WebClient(String target, String clientID, Options opts)
      : super(target, clientID, opts) {
    connectionHandler = WebsocketConnectionHandler();
  }
}

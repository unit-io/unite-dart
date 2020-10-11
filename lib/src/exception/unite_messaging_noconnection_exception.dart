part of unite_messaging;

class NoConnectionException implements Exception {
  NoConnectionException(String txt) {
    _message = 'unite_messaging::NoConnectionException:$txt';
  }

  String _message;

  @override
  String toString() => _message;
}

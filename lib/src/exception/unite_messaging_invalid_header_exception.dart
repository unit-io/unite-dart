part of unite_messaging;

class InvalidHaderException implements Exception {
  InvalidHaderException(String txt) {
    _message = 'unite_messaging::InvalidHeaderException:$txt';
  }

  String _message;

  @override
  String toString() => _message;
}

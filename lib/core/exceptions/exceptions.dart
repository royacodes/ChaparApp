class ServerException implements Exception {
  final String message;
  final String statusCode;

  ServerException(this.message, this.statusCode);

  @override
  String toString() {
    return "$message";
  }
}

class NetworkException implements Exception {
  final message;

  NetworkException(this.message);

  String toString() {
    return "$message";
  }
}

class AppException implements Exception {
  final message;

  AppException(this.message);

  String toString() {
    return "$message";
  }
}

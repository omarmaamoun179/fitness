import 'package:dio/dio.dart';

abstract class Failure {
  final dynamic message;
  final int? status;
  final dynamic errors;

  const Failure(this.message, this.status, this.errors);

  /// Method to get all errors as a formatted string.
  String getAllError() {
    if (errors != null && errors!.isNotEmpty) {
      final errorMessage = errors!.entries.map((entry) {
        final field = entry.key;
        final messages = entry.value as List;
        return "$field: ${messages.join(", ")}";
      }).join("\n");
      return errorMessage;
    }
    return message;
  }
}

class RemoteServerFailure extends Failure {
  RemoteServerFailure(super.message, [super.status, super.errors]);

  factory RemoteServerFailure.fromDioError(DioException dioExeption) {
    if (dioExeption.response != null) {
      return RemoteServerFailure.fromResponse(
          dioExeption.response!.statusCode, dioExeption.response!.data);
    } else {
      switch (dioExeption.type) {
        case DioExceptionType.connectionTimeout:
          return RemoteServerFailure(
            'Connection timeout occurred',
          );
        case DioExceptionType.sendTimeout:
          return RemoteServerFailure(
            'Send timeout occurred',
          );
        case DioExceptionType.receiveTimeout:
          return RemoteServerFailure(
            'Receive timeout occurred',
          );
        case DioExceptionType.unknown:
          return RemoteServerFailure('An unknown error occurred');
        default:
          return RemoteServerFailure(
            'A network error occurred',
          );
      }
    }
  }

  factory RemoteServerFailure.fromResponse(int? statusCode, dynamic response) {
    String defaultMessage = 'An error occurred with status code: $statusCode';
    dynamic message =
        response != null && response is Map && response.containsKey('message')
            ? response['message']
            : defaultMessage;

    dynamic errors;
    if (response != null && response is Map && response.containsKey('errors')) {
      errors = (response['errors']);
    }

    return RemoteServerFailure(message, statusCode, errors);
  }
}

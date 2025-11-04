import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String errorMessage;

  ServerFailure({required this.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request to API server was cancelled");
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout in connection with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout in connection with API server");
      case DioExceptionType.badResponse:
        return ServerFailure(errorMessage: "Received invalid status code: ${dioException.response?.statusCode}");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "Connection error with API server");
      case DioExceptionType.unknown:
        if (kDebugMode) {
          print(dioException.message);
        }
        return ServerFailure(errorMessage: "Unexpected error occurred");
      default:
        return ServerFailure(errorMessage: "Something went wrong");
    }
  }
}
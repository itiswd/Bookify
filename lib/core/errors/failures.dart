import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure('Connection Timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Requist was canceled');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No internet connection');
        } else {
          return ServerFailure('Try later!');
        }
      default:
        return ServerFailure('Try later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['erroe']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, try later');
    } else {
      return ServerFailure('Opps, try again!');
    }
  }
}

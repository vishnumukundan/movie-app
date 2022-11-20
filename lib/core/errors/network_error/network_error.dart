import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  // const factory NetworkError.clientError() = ClientError;
  // const factory NetworkError.serverError() = ServerError;

  const factory NetworkError.requestCancelled() = RequestCancelled;
  const factory NetworkError.unauthorisedRequest() = UnauthorisedRequest;
  const factory NetworkError.badRequest() = BadRequest;
  const factory NetworkError.notFound(String reason) = NotFound;
  const factory NetworkError.methodNotAllowed() = MethodNotAllowed;
  const factory NetworkError.notAcceptable() = NotAcceptable;
  const factory NetworkError.requestTimeout() = RequestTimeout;
  const factory NetworkError.sendTimeout() = SendTimeout;
  const factory NetworkError.conflict() = Conflict;
  const factory NetworkError.internalServerError() = InternalServerError;
  const factory NetworkError.notImplemented() = NotImplemented;
  const factory NetworkError.serviceUnavailable() = ServiceUnavailable;
  const factory NetworkError.noInternetConnection() = NoInternetConnection;
  const factory NetworkError.formatException() = FormatException;
  const factory NetworkError.unableToProcess() = UnableToProcess;
  const factory NetworkError.defaultError(String error) = DefaultError;
  const factory NetworkError.unexpectedError() = UnexpectedError;

  ///
  ///
  ///
  ///

  static NetworkError getDioException(error) {
    if (error is Exception) {
      try {
        late NetworkError networkError;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkError = const NetworkError.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkError = const NetworkError.requestTimeout();
              break;
            case DioErrorType.other:
              networkError = const NetworkError.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkError = const NetworkError.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                  networkError = const NetworkError.unauthorisedRequest();
                  break;
                case 401:
                  networkError = const NetworkError.unauthorisedRequest();
                  break;
                case 403:
                  networkError = const NetworkError.unauthorisedRequest();
                  break;
                case 404:
                  networkError = const NetworkError.notFound("Not found");
                  break;
                case 409:
                  networkError = const NetworkError.conflict();
                  break;
                case 408:
                  networkError = const NetworkError.requestTimeout();
                  break;
                case 500:
                  networkError = const NetworkError.internalServerError();
                  break;
                case 503:
                  networkError = const NetworkError.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response!.statusCode;
                  networkError = NetworkError.defaultError(
                    "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkError = const NetworkError.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkError = const NetworkError.noInternetConnection();
        } else {
          networkError = const NetworkError.unexpectedError();
        }
        return networkError;
      } on FormatException {
        // Helper.printError(e.toString());
        return const NetworkError.formatException();
      } catch (_) {
        return const NetworkError.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkError.unableToProcess();
      } else {
        return const NetworkError.unexpectedError();
      }
    }
  }

  ///
  ///
  ///

  static String getErrorMessage(NetworkError networkError) {
    var errorMessage = "";
    networkError.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorisedRequest: () {
      errorMessage = "Unauthorised request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';

import 'exception.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    switch (error as Exception) {
      case MockException _:
        return ApiFailure.other((error as MockException).message);
      case CacheException _:
        return ApiFailure.other((error as CacheException).message);
      case ServerException _:
        final message = (error as ServerException).message;
        return ApiFailure.serverError(message);
      case TimeoutException _:
        return const ApiFailure.serverTimeout();
      case PlatformException _:
        return ApiFailure.other('${(error as PlatformException).message}');
      case OtherException _:
        return ApiFailure.other((error as OtherException).message);
      case DioException _:
        return ApiFailure.other(
          (error as DioException).response?.data['error'],
        );
      default:
        return ApiFailure.other(error.toString());
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
  const factory ApiFailure.tokenExpired() = _TokenExpired;
}

extension ApiFailureExt on ApiFailure {
  String get failureMessage {
    return maybeWhen(
      other: (message) => message,
      serverError: (message) => message,
      poorConnection: () => 'Poor Connection',
      serverTimeout: () => 'Server time out',
      tokenExpired: () => 'Session token is Expired',
      orElse: () => 'Unknown Error',
    );
  }
}

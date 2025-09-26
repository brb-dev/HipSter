import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hipstermeet/domain/auth/entities/login_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/auth_dto.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/login_dto.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/token_dto.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';

import '../../../config.dart';
import '../../../domain/core/error/exception.dart';

List<String> _pathsWhichDoesNotRequiresBearerToken = <String>['login'];

class AuthInterceptor extends Interceptor {
  final TokenStorage tokenStorage;
  final Config config;

  AuthInterceptor({required this.tokenStorage, required this.config});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      var token = await tokenStorage.get();
      if (token.token.isNotEmpty &&
          !_pathsWhichDoesNotRequiresBearerToken.any(
            (element) => '${config.urlConstants}$element' == options.path,
          )) {
        options.headers['Authorization'] = 'Bearer ${token.token}';
      }
    } on CacheException catch (e) {
      debugPrint('load token failure: ${e.message}');
    }

    options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    options.headers['x-api-key'] = 'reqres-free-v1';

    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    debugPrint('onResponse ${response.statusCode} ${response.data}');
    try {
      if (response.statusCode == 401) {
        final newToken = await _refreshToken();
        if (newToken != null) {
          final newResponse = await _retry(
            newToken.toDomain(),
            response.requestOptions,
          );

          return handler.next(newResponse);
        }
      }
      return super.onResponse(response, handler);
    } catch (e) {
      return super.onResponse(response, handler);
    }
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }

  Future<TokenDto?> _refreshToken() async {
    try {
      final dio = Dio(
        BaseOptions(
          baseUrl: config.baseUrl,
          method: 'POST',
          headers: <String, dynamic>{'x-api-key': 'reqres-free-v1'},
        ),
      );
      final tokenResponse = await dio.request(
        '${config.urlConstants}api/login',
        data: LoginDto.fromDomain(
          LoginEntity.empty().copyWith(
            email: EmailAddress('eve.holt@reqres.in'),
            password: Password.enterLogin('cityslicka'),
          ),
        ).toJson(),
      );
      final token = AuthDto.fromJson(tokenResponse.data).toDomain();

      final newToken = TokenDto.fromDomain(token.token);
      await tokenStorage.set(newToken);

      return newToken;
    } catch (e) {
      debugPrint('Refresh token failed : $e');

      return null;
    }
  }

  Future<Response<dynamic>> _retry(
    Token token,
    RequestOptions requestOptions,
  ) async {
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: Duration(milliseconds: config.httpSendTimeout),
        connectTimeout: Duration(milliseconds: config.httpConnectTimeout),
        receiveTimeout: Duration(milliseconds: config.httpReceiveTimeout),
      ),
    );

    if (token.isValid()) {
      requestOptions.headers['Authorization'] = 'Bearer ${token.getOrCrash()}';
    }
    requestOptions.headers['x-api-key'] = 'reqres-free-v1';

    return await dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      ),
    );
  }
}

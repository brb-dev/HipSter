import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/error/exception.dart';
import 'package:hipstermeet/domain/core/error/exception_handler.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/auth_dto.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:hipstermeet/infrastructure/core/http/http_service.dart';
import 'package:mocktail/mocktail.dart';

class ConfigMock extends Mock implements Config {}

class AuthEntityMock extends Mock implements AuthEntity {}

void main() {
  late GetIt locator;
  late AuthRemoteDatasource remoteDataSource;
  late AuthEntity authEntity;

  final dio = Dio(BaseOptions(baseUrl: 'https://reqres.in'));

  final dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final service = HttpService.mockDio(dio);
  late Config configMock;

  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
    locator = GetIt.instance;
    locator.registerSingleton<Config>(Config()..appFlavor = Flavor.dev);
    configMock = ConfigMock();
    when(() => configMock.appFlavor).thenReturn(Flavor.dev);
    when(() => configMock.urlConstants).thenReturn('/api/');
    remoteDataSource = AuthRemoteDatasource(
      config: configMock,
      dataSourceExceptionHandler: DataSourceExceptionHandler(),
      httpService: service,
    );
    authEntity = AuthEntity.empty().copyWith(token: Token('abcdxyz'));
  });

  group('Test AuthRemoteDatasource==>', () {
    test('loginWithEmailAndPassword==>Success', () async {
      final res = {'token': 'abcdxyz'};

      dioAdapter.onGet(
        '/api/login',
        (server) => server.reply(200, res, delay: const Duration(seconds: 1)),
        data: AuthDto.fromDomain(authEntity).toJson(),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
      );

      final result = await remoteDataSource.loginWithEmailAndPassword(
        email: EmailAddress('abcd@reqres.in'),
        password: Password.enterLogin('Test@1234'),
      );

      expect(result.token.getOrCrash(), 'abcdxyz');
    });

    test('loginWithEmailAndPassword==>Failure', () async {
      final res = {'token': 'abcdxyz'};

      dioAdapter.onGet(
        '/api/login',
        (server) => server.reply(204, res, delay: const Duration(seconds: 1)),
        data: AuthDto.fromDomain(authEntity).toJson(),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
      );

      await remoteDataSource
          .loginWithEmailAndPassword(
            email: EmailAddress('abcd@reqres.in'),
            password: Password.enterLogin('Test@1234'),
          )
          .onError((error, _) async {
            expect(error, isA<ServerException>());
            return Future.value(AuthEntityMock());
          });
    });

    test('logout==>Success', () async {
      dioAdapter.onGet(
        '/api/logout',
        (server) => server.reply(200, {}, delay: const Duration(seconds: 1)),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
      );

      final result = await remoteDataSource.logout();

      expect(() => result, isA<void>());
    });

    test('logout==>Failure', () async {
      dioAdapter.onGet(
        '/api/login',
        (server) => server.reply(204, {}, delay: const Duration(seconds: 1)),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
      );

      await remoteDataSource.logout().onError((error, _) async {
        expect(error, isA<ServerException>());
        return Future.value(null);
      });
    });
  });
}

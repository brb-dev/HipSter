import 'package:flutter_test/flutter_test.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/token_dto.dart';
import 'package:hipstermeet/infrastructure/auth/repositories/auth_repository.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';
import 'package:mocktail/mocktail.dart';

class ConfigMock extends Mock implements Config {}

class AuthRemoteDatasourceMock extends Mock implements AuthRemoteDatasource {}

class TokenStorageMock extends Mock implements TokenStorage {}

void main() {
  late AuthRemoteDatasource remoteDataSourceMock;
  late TokenStorage tokenStorageMock;
  late AuthRepository repository;
  late Config configMock;

  setUpAll(() {
    configMock = ConfigMock();
    remoteDataSourceMock = AuthRemoteDatasourceMock();
    tokenStorageMock = TokenStorageMock();
  });

  group('Test auth_repository', () {
    test('loginWithEmailAndPassword Fail', () async {
      repository = AuthRepository(
        config: configMock,
        remoteDataSource: remoteDataSourceMock,
        tokenStorage: tokenStorageMock,
      );

      final password = Password.enterLogin('fake-password');
      final email = EmailAddress('fake@email.com');

      when(
        () => remoteDataSourceMock.loginWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenThrow(Exception('fake-error'));

      final result = await repository.loginWithEmailAndPassword(
        email: email,
        password: password,
      );
      expect(result.isLeft(), true);
    });

    test('loginWithEmailAndPassword Pass', () async {
      repository = AuthRepository(
        config: configMock,
        remoteDataSource: remoteDataSourceMock,
        tokenStorage: tokenStorageMock,
      );

      final password = Password.enterLogin('fake-password');
      final email = EmailAddress('fake@email.com');

      when(
        () => remoteDataSourceMock.loginWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer(
        (invocation) async =>
            AuthEntity.empty().copyWith(token: Token('abcdxyz')),
      );

      final result = await repository.loginWithEmailAndPassword(
        email: email,
        password: password,
      );
      expect(result.isRight(), true);
    });

    test('tokenValid Fail', () async {
      repository = AuthRepository(
        config: configMock,
        remoteDataSource: remoteDataSourceMock,
        tokenStorage: tokenStorageMock,
      );

      when(() => tokenStorageMock.get()).thenThrow(Exception('fake-error'));

      final result = await repository.tokenValid();
      expect(result.isLeft(), true);
    });

    test('tokenValid Pass', () async {
      repository = AuthRepository(
        config: configMock,
        remoteDataSource: remoteDataSourceMock,
        tokenStorage: tokenStorageMock,
      );

      when(
        () => tokenStorageMock.get(),
      ).thenAnswer((invocation) async => TokenDto(token: 'abcdxyz'));

      final result = await repository.tokenValid();
      expect(result.isRight(), true);
    });

    test('tokenValid Pass with invalid', () async {
      repository = AuthRepository(
        config: configMock,
        remoteDataSource: remoteDataSourceMock,
        tokenStorage: tokenStorageMock,
      );

      when(
        () => tokenStorageMock.get(),
      ).thenAnswer((invocation) async => TokenDto(token: ''));

      final result = await repository.tokenValid();
      expect(result.isLeft(), true);
    });
  });
}

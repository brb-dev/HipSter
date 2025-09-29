import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/infrastructure/auth/repositories/auth_repository.dart';
import 'package:mocktail/mocktail.dart';

class AuthRepoMock extends Mock implements AuthRepository {}

class ConfigMock extends Mock implements Config {}

void main() {
  final AuthRepository authRepoMock = AuthRepoMock();
  final Config configMock = ConfigMock();
  group('Auth BLoC Test => ', () {
    blocTest(
      'init() with Error',
      build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
      setUp: () {
        when(() => authRepoMock.tokenValid()).thenAnswer(
          (invocation) async => const Left(ApiFailure.other('fake-error')),
        );
        when(() => authRepoMock.tokenValid()).thenAnswer(
          (invocation) async => const Left(ApiFailure.other('fake-error')),
        );
      },
      act: (AuthBloc bloc) async => bloc.add(const AuthEvent.init()),
      expect: () => [
        const AuthState.initial(),
        const AuthState.unauthenticated(),
      ],
    );
    blocTest(
      'init() with Success',
      build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
      setUp: () {
        when(
          () => authRepoMock.tokenValid(),
        ).thenAnswer((invocation) async => const Right(unit));
      },
      act: (AuthBloc bloc) async => bloc.add(const AuthEvent.init()),
      expect: () => [
        const AuthState.initial(),
        const AuthState.authenticated(),
      ],
    );

    blocTest(
      'Logout failure',
      build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
      setUp: () {
        when(() => authRepoMock.logout()).thenAnswer(
          (invocation) async => const Left(ApiFailure.other('fake-error')),
        );
      },
      act: (AuthBloc bloc) async => bloc.add(AuthEvent.logout()),
      expect: () => [],
    );

    blocTest(
      'Logout Success',
      build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
      setUp: () {
        when(() => authRepoMock.tokenValid()).thenAnswer(
          (invocation) async => const Left(ApiFailure.tokenExpired()),
        );
        when(
          () => authRepoMock.logout(),
        ).thenAnswer((invocation) async => const Right(unit));
      },
      act: (AuthBloc bloc) async => bloc.add(AuthEvent.logout()),
      expect: () => [const AuthState.unauthenticated()],
    );
  });
}

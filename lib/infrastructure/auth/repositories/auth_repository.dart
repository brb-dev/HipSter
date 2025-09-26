import 'package:dartz/dartz.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/token_dto.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';

import '../../../config.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/core/error/failure_handler.dart';

class AuthRepository implements IAuthRepository {
  final Config config;
  final AuthRemoteDatasource remoteDataSource;
  final TokenStorage tokenStorage;

  AuthRepository({
    required this.config,
    required this.remoteDataSource,
    required this.tokenStorage,
  });

  @override
  Future<Either<ApiFailure, AuthEntity>> loginWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      final auth = await remoteDataSource.loginWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(auth);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> tokenValid() async {
    try {
      final token = await tokenStorage.get();

      return token.toDomain().isValid()
          ? const Right(unit)
          : const Left(ApiFailure.tokenExpired());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> storeToken({required Token token}) async {
    try {
      await tokenStorage.set(TokenDto.fromDomain(token));

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> logout() async {
    try {
      await remoteDataSource.logout();
      await tokenStorage.clear();

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, AuthEntity>> loginWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
  Future<Either<ApiFailure, Unit>> tokenValid();

  Future<Either<ApiFailure, Unit>> storeToken({required Token token});

  Future<Either<ApiFailure, Unit>> logout();
}

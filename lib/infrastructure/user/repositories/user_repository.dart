import 'package:dartz/dartz.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import 'package:hipstermeet/domain/user/repositories/i_user_repository.dart';
import 'package:hipstermeet/infrastructure/user/datasources/user_remote_data_source.dart';

import '../../../config.dart';
import '../../../domain/core/error/failure_handler.dart';

class UserRepository implements IUserRepository {
  final Config config;
  final UserRemoteDataSource remoteDataSource;

  UserRepository({required this.config, required this.remoteDataSource});

  @override
  Future<Either<ApiFailure, List<UserEntity>>> fetchUser() async {
    try {
      final users = await remoteDataSource.fetchUser();

      return Right(users);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}

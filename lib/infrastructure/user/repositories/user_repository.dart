import 'package:dartz/dartz.dart';
import 'package:hipstermeet/domain/core/error/api_failure.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import 'package:hipstermeet/domain/user/repositories/i_user_repository.dart';
import 'package:hipstermeet/infrastructure/core/storage/user_storage.dart';
import 'package:hipstermeet/infrastructure/user/datasources/user_remote_data_source.dart';
import 'package:hipstermeet/infrastructure/user/dtos/user_dto.dart';

import '../../../config.dart';
import '../../../domain/core/error/failure_handler.dart';

class UserRepository implements IUserRepository {
  final Config config;
  final UserRemoteDataSource remoteDataSource;
  final UserStorage userStorage;

  UserRepository({
    required this.config,
    required this.remoteDataSource,
    required this.userStorage,
  });

  @override
  Future<Either<ApiFailure, List<UserEntity>>> fetchUser() async {
    try {
      final users = await remoteDataSource.fetchUser();
      //Even if the list is same still we are pushing it, need to check if any difference, then push it
      await userStorage.putUsers(
        users: users.map((e) => UserDto.fromDomain(e)).toList(),
      );
      return Right(users);
    } catch (e) {
      final usersFromCache = userStorage.fetchUserFromCache();
      if (usersFromCache != null) {
        final userList = usersFromCache.map((e) => e.toDomain()).toList();
        return Right(userList);
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }
}

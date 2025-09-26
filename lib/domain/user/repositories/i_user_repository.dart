import 'package:dartz/dartz.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';

import '../../core/error/api_failure.dart';

abstract class IUserRepository {
  Future<Either<ApiFailure, List<UserEntity>>> fetchUser();
}

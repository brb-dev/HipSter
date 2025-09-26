import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/core/error/exception_handler.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import 'package:hipstermeet/infrastructure/core/http/http_service.dart';
import 'package:hipstermeet/infrastructure/user/dtos/user_dto.dart';

class UserRemoteDataSource {
  final HttpService http;
  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final Config config;
  UserRemoteDataSource({
    required this.http,
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<List<UserEntity>> fetchUser() async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await http.request(
        method: 'GET',
        url: '${config.urlConstants}users?page=1&per_page=15',
      );

      final data = (res.data as Map<String, dynamic>)['data'];

      return ((res.data as Map<String, dynamic>)['data'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e).toDomain())
          .toList();
    });
  }
}

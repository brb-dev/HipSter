import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';
import 'package:hipstermeet/domain/core/error/exception_handler.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/auth_dto.dart';
import 'package:hipstermeet/infrastructure/core/http/http_service.dart';

class AuthRemoteDatasource {
  HttpService httpService;
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;

  AuthRemoteDatasource({
    required this.httpService,
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<AuthEntity> loginWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await httpService.request(
        method: 'POST',
        url: '${config.urlConstants}login',
        data: <String, dynamic>{
          'email': email.getOrCrash(),
          'password': password.getOrCrash(),
        },
      );

      return AuthDto.fromJson(res.data as Map<String, dynamic>).toDomain();
    });
  }

  Future<void> logout() async {
    return await dataSourceExceptionHandler.handle(() async {
      await httpService.request(
        method: 'POST',
        url: '${config.urlConstants}logout',
      );
    });
  }
}

import 'package:get_it/get_it.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/domain/core/error/exception_handler.dart';
import 'package:hipstermeet/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:hipstermeet/infrastructure/auth/repositories/auth_repository.dart';
import 'package:hipstermeet/infrastructure/core/http/auth_interceptor.dart';
import 'package:hipstermeet/infrastructure/core/http/http_service.dart';
import 'package:hipstermeet/infrastructure/core/storage/secure_storage.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';
import 'package:hipstermeet/infrastructure/user/datasources/user_remote_data_source.dart';
import 'package:hipstermeet/infrastructure/user/repositories/user_repository.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.dart';
import 'package:hipstermeet/presentation/core/routing/app_router_observer.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => AppRouterObserver());
  locator.registerLazySingleton(() => DataSourceExceptionHandler());
  locator.registerLazySingleton(() => SecureStorage());
  locator.registerLazySingleton(
    () => TokenStorage(secureStorage: locator<SecureStorage>()),
  );
  locator.registerLazySingleton(
    () => AuthInterceptor(
      tokenStorage: locator<TokenStorage>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => HttpService(
      config: locator<Config>(),
      interceptors: [locator<AuthInterceptor>()],
    ),
  );
  locator.registerLazySingleton(
    () => AuthRemoteDatasource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthRepository(
      config: locator<Config>(),
      remoteDataSource: locator<AuthRemoteDatasource>(),
      tokenStorage: locator<TokenStorage>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthBloc(
      authRepository: locator<AuthRepository>(),
      config: locator<Config>(),
    ),
  );

  locator.registerLazySingleton(
    () => UserRemoteDataSource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
      http: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => UserRepository(
      config: locator<Config>(),
      remoteDataSource: locator<UserRemoteDataSource>(),
    ),
  );
}

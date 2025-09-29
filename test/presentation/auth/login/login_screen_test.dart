import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/application/auth/login/login_form_bloc.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:hipstermeet/infrastructure/auth/repositories/auth_repository.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';
import 'package:hipstermeet/presentation/auth/login/login_screen.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.dart';
import 'package:hipstermeet/presentation/core/utils/widget_keys.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/widget_utils.dart';

class LoginFormBlocMock extends MockBloc<LoginFormEvent, LoginFormState>
    implements LoginFormBloc {}

class AuthBlocMock extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class AuthRepositoryMock extends Mock implements AuthRepository {}

class ConfigMock extends Mock implements Config {}

class AuthRemoteDatasourceMock extends Mock implements AuthRemoteDatasource {}

class TokenStorageMock extends Mock implements TokenStorage {}

class AutoRouterMock extends Mock implements AppRouter {
  @override
  String currentPath = '';
}

void main() {
  late GetIt locator;
  late LoginFormBloc loginFormBlocMock;
  late AuthBloc authBlocMock;
  late Config configMock;
  late TokenStorage tokenStorageMock;
  late AuthRemoteDatasource authRemoteDatasourceMock;
  late AppRouter autoRouterMock;

  setUpAll(() {
    locator = GetIt.instance;
    locator.registerLazySingleton(() => AppRouter());
    tokenStorageMock = TokenStorageMock();
    authRemoteDatasourceMock = AuthRemoteDatasourceMock();
    configMock = ConfigMock();
    locator.registerLazySingleton(
      () => AuthRepository(
        config: configMock,
        remoteDataSource: authRemoteDatasourceMock,
        tokenStorage: tokenStorageMock,
      ),
    );
  });

  group('Test Login Screen', () {
    setUp(() {
      WidgetsFlutterBinding.ensureInitialized();
      loginFormBlocMock = LoginFormBlocMock();
      authBlocMock = AuthBlocMock();
      autoRouterMock = locator<AppRouter>();
      when(() => loginFormBlocMock.state).thenReturn(LoginFormState.initial());
      when(() => authBlocMock.state).thenReturn(AuthState.unauthenticated());
    });

    Widget loginScreenTestPage({bool? useMediaQuery}) =>
        WidgetUtils.getScopedWidget(
          autoRouterMock: autoRouterMock,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(create: (context) => authBlocMock),
              BlocProvider<LoginFormBloc>(
                create: (context) => loginFormBlocMock,
              ),
            ],
            child: const LoginScreen(),
          ),
        );

    testWidgets('Load Screen', (tester) async {
      tester.view.physicalSize = const Size(375, 812);
      tester.view.devicePixelRatio = 1.0; // keep ratio consistent

      addTearDown(() {
        // Reset after test, otherwise this affects other tests
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });
      await tester.pumpWidget(loginScreenTestPage());
      await tester.pump();

      final title = find.byKey(WidgetKeys.loginTextKey);
      expect(title, findsOneWidget);

      final loginButton = find.byKey(WidgetKeys.loginButtonKey);
      expect(loginButton, findsOneWidget);
    });
  });
}

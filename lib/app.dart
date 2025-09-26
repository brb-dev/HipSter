import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/infrastructure/core/storage/token_storage.dart';
import 'package:hipstermeet/locator.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.dart';
import 'package:hipstermeet/presentation/core/routing/app_router_observer.dart';
import 'package:hipstermeet/presentation/core/theme/app_theme.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization({required Flavor flavor}) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await locator<TokenStorage>().init();
      runApp(App());
    },
    (error, stackTrace) {
      //Log Error
    },
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>()..add(const AuthEvent.init()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appThemeData[AppTheme.light],
        darkTheme: appThemeData[AppTheme.dark],
        themeMode: ThemeMode.system,
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [locator<AppRouterObserver>()],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}

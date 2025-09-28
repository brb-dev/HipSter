import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.gr.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/utils/asset/app_asset.dart';
import 'package:hipstermeet/presentation/core/utils/extension_util.dart';
import 'package:hipstermeet/presentation/core/widgets/dialog_util.dart';
import 'package:hipstermeet/presentation/core/widgets/image/custom_image_view.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        context.read<AuthBloc>().add(const AuthEvent.init());
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.map(
              initial: (_) {},
              loading: (_) {},
              authenticated: (authState) {
                final routes = <PageRouteInfo<dynamic>>[
                  const SplashRoute(),
                  const MainNavigationRoute(),
                ];

                context.router.replaceAll(routes);
              },
              unauthenticated: (unauthState) {
                final routes = <PageRouteInfo<dynamic>>[
                  const SplashRoute(),
                  const LoginRoute(),
                ];

                context.router.replaceAll(routes);
              },
            );
          },
        ),
      ],
      child: _Splash(),
    );
  }
}

class _Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColor.palleteOne, AppColor.palleteTwo],
          ),
        ),
        child: Center(
          child: CustomImageView(
            imagePath: AppAssets.appIcon,
            width: 335,
            height: 107,
          ),
        ),
      ),
    );
  }
}

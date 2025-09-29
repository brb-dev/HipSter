import 'package:auto_route/auto_route.dart';

import 'route_name.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: RouteName.empty, page: SplashRoute.page, initial: true),
    AutoRoute(path: RouteName.login, page: LoginRoute.page),
    AutoRoute(
      path: RouteName.main,
      page: MainNavigationRoute.page,
      children: [
        AutoRoute(page: MeetingRoute.page, path: RouteName.meeting),
        AutoRoute(page: UserRoute.page, path: RouteName.user),
        AutoRoute(page: ProfileRoute.page, path: RouteName.profile),
      ],
    ),
    AutoRoute(path: RouteName.call, page: CallRoute.page),
    RedirectRoute(path: '*', redirectTo: RouteName.empty),
  ];
}

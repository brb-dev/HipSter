import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.gr.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';

@RoutePage()
class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => false,
      child: _CustomTabBar(routes: _getTabs(context)),
    );
  }
}

class _CustomTabBar extends StatefulWidget {
  final List<RouteItem> routes;

  const _CustomTabBar({required this.routes});

  @override
  State<_CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<_CustomTabBar>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: widget.routes.length, vsync: this);
  }

  List<PageRouteInfo> _getRouteList(List<RouteItem> routes) =>
      routes.map((e) => e.route).toList();

  @override
  Widget build(BuildContext context) {
    final routerList = _getRouteList(widget.routes);
    tabController = TabController(length: widget.routes.length, vsync: this);

    return Material(
      color: Colors.white,
      child: AutoTabsRouter.pageView(
        physics: const NeverScrollableScrollPhysics(),
        routes: routerList,
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);
          tabController.animateTo(tabsRouter.activeIndex);

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'HipSter Meet',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              automaticallyImplyLeading: false,
            ),
            body: Column(
              children: [
                Expanded(child: child),
                SafeArea(
                  top: false,
                  child: Container(
                    height: kToolbarHeight,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.transparent,
                    ),
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      controller: tabController,
                      labelColor: const Color(0xFF2C2C2C),
                      onTap: (index) {
                        tabsRouter.setActiveIndex(index);
                      },
                      unselectedLabelColor: const Color(0xFF717171),
                      labelStyle: const TextStyle(
                        color: Color(0xFF2C2C2C),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                      indicator: _TopIndicator(),
                      labelPadding: EdgeInsets.zero,
                      tabs: _getTabs(context)
                          .asMap()
                          .entries
                          .map(
                            (item) => Tab(
                              icon: item.value.icon,
                              text: item.value.label,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final paint = Paint()
      ..color = AppColor.black
      ..isAntiAlias = true;

    final xPos = offset.dx + cfg.size!.width / 2;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTRB(
          xPos - cfg.size!.width / 2,
          -6,
          xPos + cfg.size!.width / 2,
          2,
        ),
        bottomLeft: const Radius.circular(8.0),
        bottomRight: const Radius.circular(8.0),
      ),
      paint,
    );

    canvas.drawLine(
      Offset(offset.dx + 3, offset.dy),
      Offset(cfg.size!.width + offset.dx - 3, 0),
      paint,
    );
  }
}

List<RouteItem> _getTabs(BuildContext context) {
  return [callTabRouteItem, userTabRouteItem, profileTabRouteItem];
}

RouteItem callTabRouteItem = RouteItem(
  route: const CallRoute(),
  icon: Icon(Icons.home),
  selectedIcon: Icon(Icons.home),
  label: 'Call',
);

RouteItem userTabRouteItem = RouteItem(
  route: const UserRoute(),
  icon: Icon(Icons.money),
  selectedIcon: Icon(Icons.money),
  label: 'User',
);

RouteItem profileTabRouteItem = RouteItem(
  route: const ProfileRoute(),
  icon: Icon(Icons.money_off_csred),
  selectedIcon: Icon(Icons.money_off_csred),
  label: 'Profile',
);

class RouteItem {
  final PageRouteInfo<dynamic> route;
  final Widget icon;
  final Widget selectedIcon;
  final String label;

  const RouteItem({
    required this.route,
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}

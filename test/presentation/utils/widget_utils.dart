import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.dart';

import 'material_bloc_provider_frame_wrapper.dart';
import 'material_frame_wrapper.dart';

class WidgetUtils {
  static Widget getScopedWidget({
    required AppRouter autoRouterMock,
    required Widget child,
    List<BlocProvider> providers = const <BlocProvider>[],
    String? routeName,
  }) {
    return RouterScope(
      controller: autoRouterMock,
      inheritableObserversBuilder: () => [],
      navigatorObservers: const [],
      stateHash: 0,
      child: StackRouterScope(
        controller: autoRouterMock,
        stateHash: 0,
        child: providers.isNotEmpty
            ? MultiBlocProviderFrameWrapper(providers: providers, child: child)
            : MaterialFrameWrapper(child: child),
      ),
    );
  }
}

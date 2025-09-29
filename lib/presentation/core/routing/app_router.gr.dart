// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:hipstermeet/presentation/auth/login/login_screen.dart' as _i2;
import 'package:hipstermeet/presentation/call/call_screen.dart' as _i1;
import 'package:hipstermeet/presentation/main_tab.dart' as _i3;
import 'package:hipstermeet/presentation/meeting/meeting_screen.dart' as _i4;
import 'package:hipstermeet/presentation/profile/profile_screen.dart' as _i5;
import 'package:hipstermeet/presentation/splash/splash_screen.dart' as _i6;
import 'package:hipstermeet/presentation/user/user_screen.dart' as _i7;

/// generated route for
/// [_i1.CallScreen]
class CallRoute extends _i8.PageRouteInfo<CallRouteArgs> {
  CallRoute({
    _i9.Key? key,
    required String meetingId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CallRoute.name,
          args: CallRouteArgs(
            key: key,
            meetingId: meetingId,
          ),
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CallRouteArgs>();
      return _i1.CallScreen(
        key: args.key,
        meetingId: args.meetingId,
      );
    },
  );
}

class CallRouteArgs {
  const CallRouteArgs({
    this.key,
    required this.meetingId,
  });

  final _i9.Key? key;

  final String meetingId;

  @override
  String toString() {
    return 'CallRouteArgs{key: $key, meetingId: $meetingId}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.MainNavigationScreen]
class MainNavigationRoute extends _i8.PageRouteInfo<void> {
  const MainNavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainNavigationScreen();
    },
  );
}

/// generated route for
/// [_i4.MeetingScreen]
class MeetingRoute extends _i8.PageRouteInfo<void> {
  const MeetingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MeetingRoute.name,
          initialChildren: children,
        );

  static const String name = 'MeetingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.MeetingScreen();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashScreen();
    },
  );
}

/// generated route for
/// [_i7.UserScreen]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.UserScreen();
    },
  );
}

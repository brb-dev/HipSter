import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/theme/app_theme.dart';

class MaterialFrameWrapper extends StatelessWidget {
  final Widget child;

  const MaterialFrameWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: appThemeData[AppTheme.light], home: child);
  }
}

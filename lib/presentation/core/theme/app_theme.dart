import 'package:flutter/material.dart';

import 'base_style.dart';

enum AppTheme { light, dark }

final appThemeData = {
  AppTheme.light: ThemeData.light().copyWith(textTheme: _textTheme()),
  AppTheme.dark: ThemeData.dark().copyWith(textTheme: _textTheme()),
};

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
    titleLarge: BaseStyles.titleLarge,
    titleSmall: BaseStyles.titleSmall,
    bodyLarge: BaseStyles.bodyLarge,
    bodyMedium: BaseStyles.bodyMedium,
    bodySmall: BaseStyles.bodySmall,
    labelLarge: BaseStyles.lebelLarge,
    displayLarge: BaseStyles.displayLarge,
  );
}

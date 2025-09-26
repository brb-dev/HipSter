import 'package:flutter/material.dart';

const String _fontFamily = 'Fraunces';

class BaseStyles {
  BaseStyles._();

  static TextStyle titleLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle lebelLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: Colors.black,
  );

  static TextStyle displayLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: Colors.black,
  );
}

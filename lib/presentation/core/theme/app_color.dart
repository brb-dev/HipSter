import 'package:flutter/material.dart';

class AppColor {
  static Color bgColor = HexColor.fromHex('#FFF8DC');
  static Color yellowPrimary = HexColor.fromHex('#FCC85F');
  static Color tealSecondary = HexColor.fromHex('#A6E9DB');
  static Color primarySecondary = HexColor.fromHex('#FDD991');
  static Color errorRed = HexColor.fromHex('#8E24AA');
  static Color black = HexColor.fromHex('#0C201D');
  static Color textColor = HexColor.fromHex('#153531');
  static Color timeColor = HexColor.fromHex('#4A6F6A');
  static Color textboxColor = HexColor.fromHex('#FEF3DC');

  static Color palleteOne = HexColor.fromHex('#2A9D8F');
  static Color palleteTwo = HexColor.fromHex('#1D4B45');
  static Color palleteThree = HexColor.fromHex('#F4392A');

  static Color white = HexColor.fromHex('#FFFFFF');

  static Color grey = HexColor.fromHex('#B6B6B6');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

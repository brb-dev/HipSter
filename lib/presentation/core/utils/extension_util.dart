import 'package:flutter/material.dart';

extension SizeExtension on int {
  SizedBox get hs => SizedBox(height: toDouble());
  SizedBox get wd => SizedBox(width: toDouble());
}

extension DoubleSizeExtension on double {
  SizedBox get hs => SizedBox(height: toDouble());
  SizedBox get wd => SizedBox(width: toDouble());
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldClazz<T> {
  final Function(T, T) buildWhen;
  final Key fieldKey;
  final String labelText;
  final String? Function(String?, T) validator;
  final Function(String) onChange;
  final Function(String, T) onDone;
  final bool Function(dynamic) isEnabled;
  final bool Function(T)? shouldObscureText;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String hintText;
  final TextStyle? hintStyle;
  final BoxConstraints? suffixConstraint;
  final Widget Function(dynamic)? getSuffix;
  final Function()? onTap;
  final bool isDate;

  final BorderSide Function(dynamic) enabledBorderSide;
  final TextStyle Function(dynamic) labelStyle;

  final bool readOnly;

  final bool shouldShowBottomText;
  final String? bottomText;
  bool Function(dynamic)? bottomTextCondition;

  FieldClazz({
    required this.buildWhen,
    required this.fieldKey,
    required this.labelText,
    required this.validator,
    required this.onChange,
    required this.onDone,
    required this.isEnabled,
    required this.hintText,
    this.hintStyle,
    this.textInputType,
    this.inputFormatters,
    this.shouldObscureText,
    this.getSuffix,
    this.suffixConstraint,
    this.shouldShowBottomText = false,
    this.bottomText,
    this.bottomTextCondition,
    this.isDate = false,
    this.readOnly = false,
    this.onTap,
    required this.enabledBorderSide,
    required this.labelStyle,
  });
}

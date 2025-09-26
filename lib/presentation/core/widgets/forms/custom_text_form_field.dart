import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineGrayTL4 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColor.tealSecondary, width: 1),
  );
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.fieldKey,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.labelText,
    required this.labelStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    required this.enableBorderSide,
  });

  final Key fieldKey;
  final String? initialValue;
  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;
  final BorderSide enableBorderSide;
  final TextStyle labelStyle;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: textFormFieldWidget(context),
          )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => TextFormField(
    key: widget.fieldKey,
    cursorColor: AppColor.black,
    scrollPadding: EdgeInsets.only(
      bottom: MediaQuery.viewInsetsOf(context).bottom,
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: _controller,
    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
    autofocus: widget.autofocus!,
    readOnly: widget.readOnly,
    onTap: () => widget.onTap?.call(),
    style: const TextStyle(
      color: Color(0xFF1E1E1E),
      fontSize: 16,
      fontFamily: 'Noto Sans',
      fontWeight: FontWeight.w400,
    ), // ?? theme.textTheme.bodyMedium,
    obscureText: widget.obscureText ?? false,
    textInputAction: widget.textInputAction,
    keyboardType: widget.textInputType,
    maxLines: widget.maxLines ?? 1,
    decoration: decoration,
    validator: widget.validator,
    onChanged: widget.onChanged,
  );

  InputDecoration get decoration => InputDecoration(
    hintText: widget.hintText ?? '',
    hintStyle: widget.hintStyle,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: widget.labelText ?? '',
    labelStyle: widget.labelStyle,
    prefixIcon: widget.prefix,
    prefixIconConstraints: widget.prefixConstraints,
    suffixIcon: widget.suffix,
    suffixIconConstraints: widget.suffixConstraints,
    isDense: true,
    contentPadding:
        widget.contentPadding ??
        const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
    fillColor: widget.fillColor ?? Colors.white,
    filled: widget.filled,
    border:
        widget.borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: widget.enableBorderSide,
        ),
    enabledBorder:
        widget.borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: widget.enableBorderSide,
        ),
    focusedBorder:
        widget.borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColor.black, width: 1),
        ),
    errorBorder:
        (widget.borderDecoration ??
                OutlineInputBorder(borderRadius: BorderRadius.circular(4)))
            .copyWith(
              borderSide: const BorderSide(color: Color(0xFF92278F), width: 1),
            ),
    focusedErrorBorder:
        (widget.borderDecoration ??
                OutlineInputBorder(borderRadius: BorderRadius.circular(4)))
            .copyWith(
              borderSide: const BorderSide(color: Color(0xFF92278F), width: 1),
            ),
    errorStyle: const TextStyle(
      color: Color(0xFF92278F),
      fontSize: 12,
      fontFamily: 'Noto Sans',
      fontWeight: FontWeight.w500,
    ),
  );
}

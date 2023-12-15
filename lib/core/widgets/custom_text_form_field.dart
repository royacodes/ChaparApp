import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import '../../config/config.dart';
import '../core.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final String? labelText;
  final String initValue;
  final bool obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool hasTitle;
  final bool hasTitleIcon;
  final Widget? titleIcon;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final bool readOnly;
  final int maxLines;
  final TextAlign textAlign;
  final ui.TextDirection textDirection;
  final TextEditingController? controller;

  CustomTextFormField(
      {this.prefixIcon,
      this.suffixIcon,
      this.textStyle = AppTheme.bodyRegular14,
      this.hintTextStyle,
      this.labelStyle = AppTheme.bodyRegular14,
      this.titleIcon,
      this.hasTitleIcon = false,
      this.contentPadding = const EdgeInsetsDirectional.all(16),
      this.hasTitle = false,
      required this.hintText,
      this.labelText,
      this.hasPrefixIcon = false,
      this.hasSuffixIcon = false,
      this.obscured = false,
      required this.textInputType,
      required this.onChanged,
      this.validator,
      this.inputFormatters,
      this.width,
      this.height,
      this.readOnly = false,
      this.maxLines = 1,
      this.textAlign = TextAlign.right,
      this.textDirection = ui.TextDirection.rtl,
      this.controller,
      this.initValue = "",
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: TextFormField(
        enabled: enabled,
        initialValue: initValue,
        controller: controller,
        maxLines: maxLines,
        style: textStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        textAlign: textAlign,
        decoration: InputDecoration(
          filled: !enabled,
          fillColor: enabled ? Colors.transparent : AppTheme.txtBackgroundColor,
          contentPadding: contentPadding,
          labelText: labelText,
          labelStyle: labelStyle,
          border: enabled
              ? AppTheme.primaryInputBorder
              : AppTheme.disabledInputBorder,
          enabledBorder:
              enabled ? AppTheme.enabledBorder : AppTheme.disabledInputBorder,
          focusedBorder:
              enabled ? AppTheme.focusedBorder : AppTheme.disabledInputBorder,
          prefixIcon: hasPrefixIcon ? prefixIcon : null,
          suffixIcon: hasSuffixIcon ? suffixIcon : null,
          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
        obscureText: obscured,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}

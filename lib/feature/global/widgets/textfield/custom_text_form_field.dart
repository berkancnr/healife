// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:healife/core/constants/layout_constants.dart';
import 'package:healife/product/theme/app_colors.dart';
import 'package:healife/product/utils/hex_color.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String)? onChanged;
  final Function(PointerDownEvent)? onTapOutside;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? enabled;
  final bool? obscureText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.onTapOutside,
    this.autovalidateMode,
    this.validator,
    this.hintText,
    this.suffix,
    this.prefix,
    this.enabled,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.minLines,
    this.maxLines,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      controller: controller,
      autovalidateMode: autovalidateMode,
      onChanged: onChanged,
      decoration: _decoration(context: context, hintText: hintText),
      validator: validator,
      obscureText: obscureText ?? false,
      style: const TextStyle(fontSize: 14),
      minLines: minLines,
      maxLines: maxLines ?? 1,
      maxLength: maxLength,
    );
  }

  OutlineInputBorder _border(BuildContext context) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.1) ?? Colors.grey),
        borderRadius: LayoutConstants.defaultButtonBorder);
  }

  OutlineInputBorder _errorBorder(BuildContext context) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: HexColor(AppHexColors.ERROR_COLOR), width: 1),
        borderRadius: LayoutConstants.defaultButtonBorder);
  }

  InputDecoration _decoration({required BuildContext context, String? hintText}) {
    return InputDecoration(
        enabled: enabled ?? true,
        filled: true,
        suffix: suffix,
        prefix: prefix,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.1),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.midSize, vertical: LayoutConstants.defaultSize),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        border: _border(context),
        focusedBorder: _border(context),
        enabledBorder: _border(context),
        focusedErrorBorder: _errorBorder(context),
        errorBorder: _errorBorder(context));
  }
}

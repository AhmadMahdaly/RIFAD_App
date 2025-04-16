import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/textfield_border_radius.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    this.text,
    this.keyboardType,
    this.obscureText = false,
    super.key,
    this.onChanged,
    this.icon,
    this.validator,
    this.contentPadding,
    this.controller,
    this.maxLines = 1,
    this.inputFormatters,
    this.enabled = true,
    this.textInputAction,
    this.autofillHints,
    this.passwordIcon,
    this.textDirection = TextDirection.ltr,
    this.fontSize = 14,
  });
  final double? fontSize;
  final String? text;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Widget? icon;
  final Widget? passwordIcon;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final TextDirection? textDirection;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: textDirection,
      style: TextStyle(
        fontSize: 15.sp,
        color: const Color(0xFF494949),
        fontWeight: FontWeight.w300,
        fontFamily: 'FF Shamel Family',
      ),
      textInputAction: textInputAction,
      autofillHints: autofillHints,
      enabled: enabled,
      cursorWidth: 1.sp,
      cursorColor: kMainColor,
      inputFormatters: inputFormatters,
      minLines: 1,
      maxLines: maxLines,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: text,
        hintStyle: TextStyle(
          fontSize: fontSize!.sp,
          color: const Color(0xFF494949),
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: passwordIcon,
        prefixIcon: icon,
        border: textfieldBorderRadius(const Color(0xFFD6D6D6)),
        focusedBorder: textfieldBorderRadius(kMainColor),
        enabledBorder: textfieldBorderRadius(const Color(0xFFD6D6D6)),
        focusedErrorBorder: textfieldBorderRadius(Colors.red),
      ),
    );
  }
}

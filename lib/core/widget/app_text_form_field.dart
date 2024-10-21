// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class AppTextFormField extends StatelessWidget {
  final InputBorder? focuseBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hinttext;
  final String? labletext;
  // final Function(String)? validatore;
  final String? Function(String?)? validator;

  final bool? isObscureText;
  final EdgeInsetsGeometry? contentpadding;
  final TextInputType? keyboardType;
  final Widget? suffixicon;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.focuseBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hinttext,
    this.labletext,
    this.validator,
    this.isObscureText,
    this.contentpadding,
    this.keyboardType,
    this.suffixicon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      obscureText: isObscureText ?? false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        fillColor: fillColor ?? ColorsApp.white,
        filled: true,
        contentPadding: contentpadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 17.h,
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsApp.graywhight,
              ),
            ),
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                color: ColorsApp.maingreen,
              ),
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        isDense: true,
        labelText: labletext,
        labelStyle: TextStyles.font17Black,
        hintText: hinttext,
        hintStyle: hintStyle ?? TextStyles.font12mainheavenly,
      ),
    );
  }
}

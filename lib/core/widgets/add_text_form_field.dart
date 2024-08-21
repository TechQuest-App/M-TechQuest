import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class AddTextFormField extends StatelessWidget {
  const AddTextFormField(
      {super.key,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isobscureText,
      this.suffixIcon,
      this.contentPadding,
      this.backgrondColor});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isobscureText;
  final Widget? suffixIcon;
  final Color? backgrondColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: gray200,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: primaryColor, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: gray400, width: 1.3),
              borderRadius: BorderRadius.circular(16.w),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyles.font16BlackRegular,
        suffixIcon: suffixIcon,
      ),
      obscureText: isobscureText ?? false,
      style: inputTextStyle ?? AppTextStyles.font14DarckBlueMedium,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final double? vertcalPadding;
  final double? horzontalPadding;
  final double? bottonWidth;
  final double? bouttonHeight;
  final Color? backgrondColor;

  final void Function()? onPressed;
  final String buttonText;
  final TextStyle textStyle;

  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.textStyle,
    this.borderRadius,
    this.vertcalPadding,
    this.horzontalPadding,
    this.bottonWidth,
    this.bouttonHeight,
    this.backgrondColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 18.0),
            ),
          ),
          backgroundColor:
              WidgetStatePropertyAll(backgrondColor ?? primaryColor),
          padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: horzontalPadding?.w ?? 12.w,
                vertical: horzontalPadding?.h ?? 14.h),
          ),
          fixedSize: WidgetStateProperty.all(Size(
              bottonWidth?.w ?? double.maxFinite, bouttonHeight?.h ?? 50.h))),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key, this.onPressed, required this.titl});
  final void Function()? onPressed;
  final String titl;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 50.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.w),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        titl,
        style: AppTextStyles.font16WhitBold,
      ),
    );
  }
}

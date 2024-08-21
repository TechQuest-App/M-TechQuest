import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';

import '../helpers/font_wiegth_helper.dart';

class AppTextStyles {
  static TextStyle font20Gray100Regular = TextStyle(
    color: gray100,
    fontSize: 20.sp,
    fontWeight: FontWiegthHelper.regular, // Regular weight
  );

  static TextStyle font32BlackSemiBold = TextStyle(
    color: black,
    fontSize: 32.sp,
    fontWeight: FontWiegthHelper.semiBold, // Semi-bold weight
  );
  static TextStyle font12GraySemiBold = TextStyle(
    color: gray100,
    fontSize: 12.sp,
    fontWeight: FontWiegthHelper.semiBold, // Semi-bold weight
  );
  static TextStyle font30BlackSemiBold = TextStyle(
    color: black,
    fontSize: 30.sp,
    fontWeight: FontWiegthHelper.semiBold, // Semi-bold weight
  );
  static TextStyle font20BlackSemiBold = TextStyle(
    color: black,
    fontSize: 20.sp,
    fontWeight: FontWiegthHelper.semiBold, // Semi-bold weight
  );

  static TextStyle font16BWhiteBold = TextStyle(
      color: white,
      fontSize: 16.sp,
      fontWeight: FontWiegthHelper.bold // Semi-bold weight
      );
  static TextStyle font16BprimaryColorBold = TextStyle(
      color: primaryColor,
      fontSize: 16.sp,
      fontWeight: FontWiegthHelper.bold // Semi-bold weight
      );
  static TextStyle font16BlackRegular = TextStyle(
      color: black,
      fontSize: 16.sp,
      fontWeight: FontWiegthHelper.regular // Semi-bold weight
      );
  static TextStyle font19BlackBold = TextStyle(
      color: black,
      fontSize: 19.sp,
      fontWeight: FontWiegthHelper.bold // Semi-bold weight
      );
  static TextStyle font16gray666Regular = TextStyle(
      color: gray100,
      fontSize: 16.sp,
      fontWeight: FontWiegthHelper.regular // Semi-bold weight
      );
  static TextStyle font20BlackBold = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWiegthHelper.bold,
      color: black); //hi duhd dd dm

  static TextStyle font10GraySemiBold = TextStyle(
      color: gray100, fontSize: 12.sp, fontWeight: FontWiegthHelper.semiBold);

      static TextStyle font18Redmedium = const TextStyle(
        color: red,
        fontSize: 18,
        fontWeight: FontWiegthHelper.medium

      );
}

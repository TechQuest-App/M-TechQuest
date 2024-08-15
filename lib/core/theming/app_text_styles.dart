import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';

class AppTextStyles {
  static TextStyle font20BlackRegular =  TextStyle(
    color: gray100,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400, // Regular weight
  );

  static TextStyle font32BlackSemiBold =  TextStyle(
    color: black,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600, // Semi-bold weight
  );
  static TextStyle font16WhitBold =  TextStyle(
    color: white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold, // Semi-bold weight
  );
}

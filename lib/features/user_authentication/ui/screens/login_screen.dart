import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: [
                Text(
                  S.of(context).login,
                  style: AppTextStyles.font30BlackSemiBold,
                ),
                verticalSpace(20),
                Text(
                  S.of(context).Your_learning_journey_Login,
                  style: AppTextStyles.font20Gray100Regular.copyWith(),
                ),
                
                


              ],
            ),
          ),
        ),
      ),
    );
  }
}

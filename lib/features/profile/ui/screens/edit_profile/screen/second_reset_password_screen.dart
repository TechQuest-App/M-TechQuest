import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/app_text_form_field.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/custom_buttom.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/bottom_navigation_bar.dart';
import 'package:techquest/generated/l10n.dart';

class SecondResetPasswordScreen extends StatefulWidget {
  const SecondResetPasswordScreen({super.key});

  @override
  State<SecondResetPasswordScreen> createState() => _SecondResetPasswordScreenState();
}

class _SecondResetPasswordScreenState extends State<SecondResetPasswordScreen> {
 bool isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          S.of(context).ResetPassword,
          style: AppTextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).ResetPasswordMessage,
              style: AppTextStyles.font14BlackSamibold,
              textAlign: TextAlign.center,
            ),
            verticalSpace(50),
            Text(
              S.of(context).NewPassword,
              style: AppTextStyles.font16Gray880Semibold,
            ),
            verticalSpace(5),
            AppTextFormField(
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText; 
                    });
                  },
                  child: Icon(
                    isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
              
              )),
            verticalSpace(5),
            Text(
              S.of(context).ConfirmNewPassword,
              style: AppTextStyles.font16Gray880Semibold,
            ),
             AppTextFormField(
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText; 
                    });
                  },
                  child: Icon(
                    isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
              
              )),
            verticalSpace(50),
            CustomButtom(
              text: S.of(context).Save,
              onPressed: (){},
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

import '../../../../core/widgets/add_text_form_field.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/terms_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKy = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).login,
                      style: AppTextStyles.font30BlackSemiBold,
                    ),
                  ],
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).Your_learning_journey_Login,
                      style: AppTextStyles.font20Gray100Regular,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                verticalSpace(80),
                Form(
                  key: formKy,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        S.of(context).Email,
                        style: AppTextStyles.font16BlackRegular,
                      ),
                      AddTextFormField(
                        hintText: S.of(context).Email_Address,
                      ),
                      verticalSpace(10),
                      Text(
                        S.of(context).password,
                        style: AppTextStyles.font16BlackRegular,
                      ),
                      verticalSpace(10),
                      AddTextFormField(
                        hintText: S.of(context).password,
                        isobscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    S.of(context).Forget_Password,
                    style: AppTextStyles.font16RedMedium,
                  ),
                ),
                verticalSpace(20),
                AppTextButton(
                  onPressed: () {},
                  buttonText: S.of(context).Log_In,
                  textStyle: AppTextStyles.font16BWhiteBold,
                ),
                verticalSpace(24),
                const AlreadyHaveAccountText(),
                verticalSpace(60),
                const TermsAndConditionText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

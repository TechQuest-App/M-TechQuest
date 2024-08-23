import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const EmailAndPassword(),
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
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  buttonText: S.of(context).Log_In,
                  textStyle: AppTextStyles.font16BWhiteBold,
                ),
                verticalSpace(24),
                const TermsAndConditionsText(),
                verticalSpace(60),
                const AlreadyHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}

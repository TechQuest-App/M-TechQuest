import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: S.of(context).by_logging_you,
              style: AppTextStyles.font13GreyRegular),
          TextSpan(
              text: S.of(context).terms_Conditions,
              style: AppTextStyles.font13DarckBlueMedium),
          TextSpan(
              text: S.of(context).and, style: AppTextStyles.font13GreyRegular),
          TextSpan(
              text: S.of(context).privacyPolicy,
              style: AppTextStyles.font13DarckBlueMedium),
        ]));
  }
}

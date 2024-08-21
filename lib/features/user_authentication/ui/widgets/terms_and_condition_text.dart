import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: S.of(context).Dont_Have,
          style: AppTextStyles.font13DarckBlueMedium),
      TextSpan(
          text: S.of(context).Sign_Up,
          style: AppTextStyles.font16BprimaryColorBold),
    ]));
  }
}

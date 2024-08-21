import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(S.of(context).SignOut, style: AppTextStyles.font18Redmedium));
  }
}

import 'package:flutter/material.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class ExperinceInfo extends StatelessWidget {
  const ExperinceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset('assets/images/google_logo.png'),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).UXDirector,
              style: AppTextStyles.font18BlacksemiBold,
            ),
            verticalSpace(8),
            Text(
              S.of(context).Google,
              style: AppTextStyles.font18BlacksemiBold,
            ),
            verticalSpace(4),
            Text(
              'Sep 2018 - Present - 11 Month',
              style: AppTextStyles.font16Graymedium,
            ),
          ],
        ),
      )
    ]);
  }
}

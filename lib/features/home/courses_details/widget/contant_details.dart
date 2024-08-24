import 'package:flutter/material.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class ContantDetails extends StatelessWidget {
  const ContantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            horizontalSpace(10),
            Text(
              '3 level',
              style: AppTextStyles.font16Gray880Semibold,
            ),
            horizontalSpace(10),
            Text(
              '50 lectures',
              style: AppTextStyles.font16Gray880Semibold,
            ),
            horizontalSpace(10),
            Text(
              '10 30 min length',
              style: AppTextStyles.font16Gray880Semibold,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'Level 1(10 Lec)',
                style: AppTextStyles.font14BlackSamibold,
              ),
            )
          ],
        )
      ],
    );
  }
}

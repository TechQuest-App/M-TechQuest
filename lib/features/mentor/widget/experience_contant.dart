import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/mentor/widget/experince_info.dart';
import 'package:techquest/generated/l10n.dart';

class ExperienceContant extends StatelessWidget {
  const ExperienceContant({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                S.of(context).Experience,
                style: AppTextStyles.font18BlacksemiBold,
              ),
            ),
          ),
          verticalSpace(25),
          const ExperinceInfo(),
          verticalSpace(15),
          const ExperinceInfo(),
        ],
      ),
    );
  }
}

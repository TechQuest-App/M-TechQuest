import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/widgets/action_last_bottom.dart';
import 'package:techquest/generated/l10n.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 450.w,
        height: 450.h,
        child: Column(
          children: [
            Text(
              S.of(context).DeleteMyAccount,
              style: AppTextStyles.font20BlackBold,
            ),
            verticalSpace(20),
            Text(
              S.of(context).DeleteMessage,
              style: AppTextStyles.font14BlackSamibold,
            ),
            verticalSpace(50),
             const ActionLastBottom(),
          ],
        ),
      ),
    );
  }
}

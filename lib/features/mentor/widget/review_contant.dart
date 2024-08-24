import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/mentor/widget/review_item.dart';
import 'package:techquest/generated/l10n.dart';

class ReviewContant extends StatelessWidget {
  const ReviewContant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(15),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              S.of(context).Reviews,
              style: AppTextStyles.font18BlacksemiBold,
            ),
          ),
        ),
         ReviewItem(
          name: S.of(context).AymanTaher,
          title: S.of(context).TitleOfReview,),
        verticalSpace(10),
         ReviewItem(
          name: S.of(context).OmarMowfak,
          title: S.of(context).TitleOfReview,
        ),
      ],
    );
  }
}

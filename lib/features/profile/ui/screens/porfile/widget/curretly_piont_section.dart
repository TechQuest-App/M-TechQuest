import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class CarrentlyPointsSection extends StatelessWidget {
  const CarrentlyPointsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
          Icon(Icons.star,color:yellow,size: 35.sp,),
          horizontalSpace(4),
           Text(S.of(context).YourCurrentlyPoints,style: AppTextStyles.font20BlackSemiBold,)

      ],
    );
  }
}
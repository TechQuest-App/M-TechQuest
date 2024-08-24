import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class CategoriesSeeAll extends StatelessWidget {
  final String text;

  const CategoriesSeeAll({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.font16Blackbold,
          ),
          const Spacer(),
          Text(
            S.of(context).See_All,
            style: AppTextStyles.font12Bluemedium,
          ),
        ],
      ),
    );
  }
}

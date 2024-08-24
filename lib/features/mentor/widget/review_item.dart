import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key, required this.name, required this.title});
  final String name;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/person_icon.svg',
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.font18BlacksemiBold,
                  ),
                  verticalSpace(4),
                   Text(
                    title,
                      style: AppTextStyles.font14GrayRegular,),
                ],
              ),
            )
          ],
        );
  }
}
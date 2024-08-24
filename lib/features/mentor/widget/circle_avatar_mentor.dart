import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class CircleAvatarMentor extends StatelessWidget {
  const CircleAvatarMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                color: blue54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
            ),
            verticalSpace(80),
            Text(
              S.of(context).MohamedAli,
              style: AppTextStyles.font24BlacSemiBold,
            ),
            Text(
              S.of(context).SeniorUIUXDesigner,
              style: AppTextStyles.font16Graymedium,
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svgs/linked_in_logo.svg'),
                horizontalSpace(13),
                SvgPicture.asset('assets/svgs/facebook_logo.svg'),
                horizontalSpace(13),
                SvgPicture.asset('assets/svgs/mail_logo.svg')
              ],
            )
           
          ],
        ),
        Positioned(
          top: 125.h, 
          child: CircleAvatar(

            radius: 80.r,
            backgroundColor:white ,
            child: CircleAvatar(
              radius: 75.r,
              backgroundImage: const AssetImage('assets/images/mentor.png',),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/core/widgets/app_text_button.dart';
import 'package:techquest/generated/l10n.dart';

class Clips extends StatelessWidget {
  const Clips({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 9,
      itemBuilder: (context, index) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/abdo_elbalf.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Icon(
                Icons.play_arrow_sharp,
                color: white,
                size: 64.sp,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              right: 70,
              child: AppTextButton(
                onPressed: () {},
                buttonText: S.of(context).StartlearningNow,
                textStyle: AppTextStyles.font16BWhiteBold,
                borderRadius: 10,
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height / 25,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(Icons.favorite_border, size: 30.sp, color: white),
                      verticalSpace(30),
                      Icon(
                        Icons.reply_sharp,
                        size: 30.sp,
                        color: white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: white,
                        child: CircleAvatar(
                          radius: 75.r,
                          backgroundImage: const AssetImage(
                            'assets/images/elbalf_two.png',
                          ),
                        ),
                      ),
                      horizontalSpace(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Elbalf69',
                              style: AppTextStyles.font16WhiteMedium),
                          Text(
                            S.of(context).ElevateYourFigmaDesignsEffortless,
                            style: AppTextStyles.font16WhiteMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

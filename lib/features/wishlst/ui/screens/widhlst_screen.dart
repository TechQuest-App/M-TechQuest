import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            height: 120.h,
            margin: EdgeInsets.only(
                bottom: 16.h, left: 16.w, right: 16.w, top: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: lighterGray,
              boxShadow: const [
                BoxShadow(
                  color: gray300,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    width: 110.w,
                    height: 120.h,
                    "https://technocation.pk/wp-content/uploads/2022/10/flutter-mobile-application-1024x562.png",
                    fit: BoxFit.fill,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter',
                            style: AppTextStyles.font16BlackRegular,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(5),
                          Text(
                            'Omar Ahmed',
                            style: AppTextStyles.font14gray666Regular,
                          ),
                          verticalSpace(5),
                          Text(
                            '1h 30m - 18 lessons',
                            style: AppTextStyles.font12GraySemiBold,
                          ),
                          verticalSpace(5),
                          Text(
                            '\$25.00',
                            style: AppTextStyles.font16lighterBlueColorBold,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 18.sp,
                            ),
                            verticalSpace(5),
                            SvgPicture.asset('assets/svgs/shopping.svg'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

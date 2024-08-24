import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/add_text_form_field.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 221.h,
      child: Stack(
        children: [
          Image.asset("assets/images/backgrondAppBarHomeButton.png"),
          Container(
            width: double.infinity,
            // height: 165.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: AssetImage('assets/images/backgrondAppBarHome.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Mustafa!',
                      style: AppTextStyles.font24wightSemiBold,
                    ),
                    Text(
                      'Let’s start learning!',
                      style: AppTextStyles.font14lightBlueSemiBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              child: CircleAvatar(
                radius: 24.0,
                backgroundColor: gray100.withOpacity(0.6),
                child: SvgPicture.asset(
                  'assets/svgs/notifications.svg',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 325.w,
                      height: 50.h,
                      child: AppTextFormField(
                        hintText: 'Search',
                        prefixIcon: SvgPicture.asset(
                          'assets/svgs/search.svg',
                          width: 16.w,
                          fit: BoxFit.scaleDown,
                        ),
                        validator: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      width: 48.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/svgs/filter.svg',
                        width: 20.w,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../data/models/courses_response_model.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/courses_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final CourseData? coursesModel;

  const DoctorsListViewItem({
    super.key,
    this.coursesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: gray200,
            spreadRadius: 1, 
            blurRadius: 2, 
            offset: Offset(0, 2), 
          )
        ],
      ),
      child: Row(
        children: [
          // CachedNetworkImage with shimmer effect for loading
          CachedNetworkImage(
            imageUrl: coursesModel?.image ??
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: gray100,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: gray300,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: gray300,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: gray300,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                color: gray300,
              ),
              child: Center(
                child: Icon(Icons.error, color: Colors.red, size: 24.sp),
              ),
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
                      coursesModel!.name ?? '',
                      style: AppTextStyles.font16BlackRegular,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(5),
                    Text(
                      coursesModel!.mentor ?? '',
                      style: AppTextStyles.font14gray666Regular,
                    ),
                    verticalSpace(5),
                    Text(
                      coursesModel!.duration ?? '',
                      style: AppTextStyles.font12GraySemiBold,
                    ),
                    verticalSpace(5),
                    Text(
                      '\${${coursesModel!.price}}',
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
                      verticalSpace(50),
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
  }
}

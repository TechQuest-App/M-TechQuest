import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/home_screen/data/models/category_response_model.dart';
import '../../../../../core/helpers/spacing.dart';

class SpecialityListViewItem extends StatelessWidget {
  final CategoryData? categoryData;

  const SpecialityListViewItem({
    super.key,
    this.categoryData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24.w),
      child: Column(
        children: [
          Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: CachedNetworkImageProvider(categoryData?.image ??
                    "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050"),
                fit: BoxFit.cover,
                onError: (error, stackTrace) => const Icon(Icons.error,
                    color: Colors.red), // Widget in case of error
              ),
            ),
          ),
          verticalSpace(8),
          Text(
            categoryData?.name ?? 'Speciality Name',
            style: AppTextStyles.font12Bluemedium, // استخدام أسلوب النص المناسب
          ),
        ],
      ),
    );
  }
}

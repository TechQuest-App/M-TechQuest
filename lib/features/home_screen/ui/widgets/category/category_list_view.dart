import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/features/home_screen/data/models/category_response_model.dart';

import 'category_item.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryData?> categoryDataList;

  const CategoryListView({
    super.key,
    required this.categoryDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryDataList.length,
        itemBuilder: (context, index) {
          final courseData = categoryDataList[index];
          if (courseData == null) {
            return const SizedBox.shrink(); // Handle null value gracefully
          }
          return CategoryListViewItem(
            categoryData: categoryDataList[index],
          );
        },
      ),
    );
  }
}

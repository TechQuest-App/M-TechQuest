import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../generated/l10n.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/categories_see_all.dart';
import '../widgets/courses_list_view.dart';
import '../widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeTopBar(),
            verticalSpace(16),
            CategoriesSeeAll(
              text: S.of(context).Categories,
            ),
            const CategoriesListView(),
            verticalSpace(16),
            CategoriesSeeAll(
              text: S.of(context).Recommended_For_You,
            ),
            verticalSpace(16),
            const CoursesListView(),
          ],
        ),
      ),
    );
  }
}

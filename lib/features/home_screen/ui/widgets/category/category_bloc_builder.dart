import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/features/home_screen/ui/courses/courses_shimmer_loading.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../data/models/courses_response_model.dart';
import '../../../logic/cubit/courses_cubit.dart';
import '../../../logic/cubit/courses_state.dart';
import 'category_list_view.dart';
import 'crtegres_shimmer_loading.dart'; // Ensure this import is correct

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CoursesLoading ||
          current is CategorySuccess ||
          current is CategoryError,
      builder: (context, state) {
        return state.maybeWhen(
            coursesLoading: () {
              return setupLoading();
            },
            categorySuccess: (categoryDataList) {
              var categoryList = categoryDataList;
              return setupSuccess(categoryList);
            },
            coursesError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// Shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(categoryList) {
    return CategoryListView(
      categoryDataList: categoryList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techquest/features/home_screen/data/models/category_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/courses_response_model.dart';

part 'courses_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Courses
  const factory HomeState.coursesLoading() = CoursesLoading;
  const factory HomeState.coursesSuccess(List<CourseData?>? coursesDataList) =
      CoursesSuccess;
  const factory HomeState.coursesError(ErrorHandler errorHandler) =
      CoursesError;
  //category

  const factory HomeState.categorySuccess(
      List<CategoryData?>? categoryDataList) = CategorySuccess;
  const factory HomeState.categoryError(ErrorHandler errorHandler) =
      CategoryError;
}

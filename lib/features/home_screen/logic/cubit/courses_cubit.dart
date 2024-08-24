import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techquest/features/home_screen/data/models/category_response_model.dart';
import 'package:techquest/features/home_screen/logic/cubit/courses_state.dart';
import '../../data/models/courses_response_model.dart';
import '../../data/repo/courses_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<CourseData?>? coursesList = [];
  List<CategoryData?>? categorieslist = [];

  void getCourses() async {
    emit(const HomeState.coursesLoading());
    final response = await _homeRepo.getCourses();
    final responseCat = await _homeRepo.getcategories();
    responseCat.when(
      success: (categoryResponseModel) {
        categorieslist = categoryResponseModel.categoryDataList ?? [];

        emit(HomeState.categorySuccess(categoryResponseModel.categoryDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.categoryError(errorHandler));
      },
    );
    response.when(
      success: (coursesResponseModel) {
        coursesList = coursesResponseModel.courseDataList ?? [];

        // Emitting the success state with the fetched course list
        emit(HomeState.coursesSuccess(coursesResponseModel.courseDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.coursesError(errorHandler));
      },
    );
  }
}

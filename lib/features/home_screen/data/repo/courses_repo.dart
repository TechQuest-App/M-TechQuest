import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../api/home_api_service.dart';
import '../models/category_response_model.dart';
import '../models/courses_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<CoursesResponseModel>> getCourses() async {
    try {
      final response = await _homeApiService.getCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CategoryResponseModel>> getcategories() async {
    try {
      final response = await _homeApiService.getcategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/category_response_model.dart';
import '../models/courses_response_model.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.courses)
  Future<CoursesResponseModel> getCourses();
  @GET(HomeApiConstants.category)
  Future<CategoryResponseModel> getcategories();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:techquest/core/networking/api_constants.dart';

import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/sign_up/data/models/sign_up_request_body.dart';
import '../../features/sign_up/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST("api/register")
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}

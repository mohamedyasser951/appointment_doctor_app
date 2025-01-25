import 'package:appointment_app/core/networking/api_constant.dart';
import 'package:appointment_app/feature/Login/Data/models/login_request_body.dart';
import 'package:appointment_app/feature/Login/Data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstant.logOut)
  Future<LoginResponse> logOut();
}

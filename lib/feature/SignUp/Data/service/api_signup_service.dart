import 'package:appointment_app/core/networking/api_constant.dart';
import 'package:appointment_app/feature/SignUp/Data/models/signup_request_body.dart';
import 'package:appointment_app/feature/SignUp/Data/models/signup_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_signup_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiSignupService {
  factory ApiSignupService(Dio dio) = _ApiSignupService;

  @POST(ApiConstant.register)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}

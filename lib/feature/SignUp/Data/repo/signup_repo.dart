import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/feature/SignUp/Data/models/signup_request_body.dart';
import 'package:appointment_app/feature/SignUp/Data/models/signup_response_body.dart';
import 'package:appointment_app/feature/SignUp/Data/service/api_signup_service.dart';

class SignupRepo {
  ApiSignupService apiService;
  SignupRepo({
    required this.apiService,
  });
  Future<ApiResult<SignupResponse>> signUp(
      {required SignupRequestBody signupRequestBody}) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

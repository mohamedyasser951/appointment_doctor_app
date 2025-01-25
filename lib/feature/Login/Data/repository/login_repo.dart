import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/feature/Login/Data/models/login_request_body.dart';
import 'package:appointment_app/feature/Login/Data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo({required this.apiService});

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final ressponse = await apiService.login(loginRequestBody);
      return ApiResult.success(ressponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<LoginResponse>> logOut() async {
    try {
      final ressponse = await apiService.logOut();
      return ApiResult.success(ressponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

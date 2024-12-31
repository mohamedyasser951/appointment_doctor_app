import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/feature/Profile/Data/api/profile_api_service.dart';
import 'package:appointment_app/feature/Profile/Data/models/GetProfile/user_data_model.dart';
import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_request_body.dart';
import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_response_body.dart';

class ProfileRepo {
  ProfileApiService apiService;
  ProfileRepo({
    required this.apiService,
  });

  Future<ApiResult<UserDataModel>> getUserPofile() async {
    try {
      final response = await apiService.getUserProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateProfileResponseBody>> updateUserPofile(
      UpdateProfileRequestBody updateProfileRequestBody) async {
    try {
      final response =
          await apiService.updateUserProfile(updateProfileRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

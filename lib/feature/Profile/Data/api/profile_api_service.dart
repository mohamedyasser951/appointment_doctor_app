import 'package:appointment_app/core/networking/api_constant.dart';
import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_request_body.dart';
import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_response_body.dart';
import 'package:appointment_app/feature/Profile/Data/models/GetProfile/user_data_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;
  @GET(ApiConstant.userProfile)
  Future<UserDataModel> getUserProfile();

  @POST(ApiConstant.userProfileUpdate)
  Future<UpdateProfileResponseBody> updateUserProfile(
      @Body() UpdateProfileRequestBody updateProfileRequestBody);
}

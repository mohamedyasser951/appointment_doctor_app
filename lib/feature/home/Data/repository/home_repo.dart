import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/feature/Home/Data/Api/home_api_service.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';

class HomeRepo {
  HomeApiService apiService;
  HomeRepo({
    required this.apiService,
  });

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await apiService.getspecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

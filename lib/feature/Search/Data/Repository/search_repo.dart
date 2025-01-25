import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/feature/Search/Data/Api%20Service/search_api_service.dart';
import 'package:appointment_app/feature/Search/Data/models/search_result_model.dart';

class SearchRepo {
  SearchApiService searchApiService;

  SearchRepo({required this.searchApiService});

  Future<ApiResult<SearchResultModel>> getAllDoctors() async {
    try {
      final response = await searchApiService.getAllDoctors();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

import 'package:appointment_app/core/networking/api_constant.dart';
import 'package:appointment_app/feature/Search/Data/models/search_result_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'search_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class SearchApiService {
  factory SearchApiService(Dio dio) = _SearchApiService;


  @GET(ApiConstant.getAllDoctors)
  Future<SearchResultModel> getAllDoctors();
}

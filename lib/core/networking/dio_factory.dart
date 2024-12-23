import 'package:appointment_app/core/constants/app_strings_constants.dart';
import 'package:appointment_app/core/helpers/storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    const Duration timeout = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioInterceptor();
      addDioHeaders();
    }
    return dio!;
  }

  static void sendTokenAfterUserLogin(String token) {
    dio!.options.headers = {"Authorization": "Bearer $token"};
  }

  static void addDioHeaders() async {
    final token =
        await StorageHelper.getSecuredString(AppStringConstants.userToken);
    dio!.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    };
  }

  static void addDioInterceptor() {
    dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
    ));
  }
}

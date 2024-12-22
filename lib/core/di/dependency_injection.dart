import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/core/networking/dio_factory.dart';
import 'package:appointment_app/feature/Login/Data/repository/login_repo.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login Feature
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(loginRepo: getIt()));
}

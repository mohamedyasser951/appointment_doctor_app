import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/core/networking/dio_factory.dart';
import 'package:appointment_app/feature/Home/Data/Api/home_api_service.dart';
import 'package:appointment_app/feature/Home/Data/repository/home_repo.dart';
import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Login/Data/repository/login_repo.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:appointment_app/feature/Profile/Data/api/profile_api_service.dart';
import 'package:appointment_app/feature/Profile/Data/repository/profile_repo.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_cubit.dart';
import 'package:appointment_app/feature/SignUp/Data/repo/signup_repo.dart';
import 'package:appointment_app/feature/SignUp/Data/service/api_signup_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login Feature
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(loginRepo: getIt()));

  //SignUp Feature
  getIt.registerFactory<ApiSignupService>(() => ApiSignupService(dio));
  getIt
      .registerLazySingleton<SignupRepo>(() => SignupRepo(apiService: getIt()));

  //Home Feature
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(apiService: getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(homeRepo: getIt()));

  //Profile Feature
  getIt.registerLazySingleton<ProfileApiService>(() => ProfileApiService(dio));
  getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepo(apiService: getIt()));
  getIt.registerLazySingleton<ProfileCubit>(
      () => ProfileCubit(profileRepo: getIt())..getUserProfile());
}

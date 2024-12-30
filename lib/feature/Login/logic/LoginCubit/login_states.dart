import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/feature/Login/Data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';

@Freezed()
class LoginStates<T> with _$LoginStates<T> {
 const factory LoginStates.initial() = _InitialLoginState;
 const factory LoginStates.loading() = LoadingLoginState;
 const factory LoginStates.success(LoginResponse loginResponse) = SuccessLoginState;
 const factory LoginStates.error({required ApiErrorModel apiErrorModel}) =  ErrorLoginState;
}
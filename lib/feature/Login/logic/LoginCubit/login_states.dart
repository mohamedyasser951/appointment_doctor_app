import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';

@Freezed()
class LoginStates<T> with _$LoginStates<T> {
 const factory LoginStates.initial() = _InitialLoginState;
 const factory LoginStates.loading() = LoadingLoginState;
 const factory LoginStates.success(T data) = SuccessLoginState;
 const factory LoginStates.error({required String error}) =  ErrorLoginState;
}
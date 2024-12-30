import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/feature/SignUp/Data/models/signup_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_states.freezed.dart';

@Freezed()
class SignupStates<T> with _$SignupStates<T>{
 const factory SignupStates.intial() = _IntialSignUpState;
 const factory SignupStates.loading() = LoadingSignUpState;
 const factory SignupStates.success(SignupResponse signupResponse) =
      SuccessSignUpState;
const  factory SignupStates.error({required ApiErrorModel apiErrorModel}) = ErrorSignUpState;
}

import 'package:appointment_app/feature/SignUp/Data/models/signup_request_body.dart';
import 'package:appointment_app/feature/SignUp/Data/repo/signup_repo.dart';
import 'package:appointment_app/feature/SignUp/Logic/SignUp%20Cubit/signup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupStates> {
  SignupRepo signupRepo;
  SignupCubit({required this.signupRepo}) : super(const SignupStates.intial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(const SignupStates.loading());
    SignupRequestBody signupRequestBody = SignupRequestBody(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        gender: 0,
        password: passwordController.text.trim(),
        passwordConfirmation: confirmPasswordController.text.trim());

    final response =
        await signupRepo.signUp(signupRequestBody: signupRequestBody);
        
    response.when(
      success: (signupResponse) {
        emit(SignupStates.success(signupResponse));
      },
      failure: (apiErrorModel) {
        emit(SignupStates.error(
            apiErrorModel: apiErrorModel));
      },
    );
  }
}

import 'package:appointment_app/feature/Login/Data/models/login_request_body.dart';
import 'package:appointment_app/feature/Login/Data/repository/login_repo.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepo loginRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginCubit({required this.loginRepo}) : super(const LoginStates.initial());
  void emitLoadingStates() async {
    emit(const LoginStates.loading());
    LoginRequestBody loginRequestBody = LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
    var response = await loginRepo.login(loginRequestBody);
    response.when(
      success: (data) {
        emit(LoginStates.success(data));
      },
      failure: (apiErrorModel) {
        emit(LoginStates.error(apiErrorModel: apiErrorModel));
      },
    );
  }
}

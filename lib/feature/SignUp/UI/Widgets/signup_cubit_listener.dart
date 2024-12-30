import 'package:appointment_app/core/constants/app_strings_constants.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/storage_helper.dart';
import 'package:appointment_app/core/networking/dio_factory.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/SignUp/Logic/SignUp%20Cubit/signup_cubit.dart';
import 'package:appointment_app/feature/SignUp/Logic/SignUp%20Cubit/signup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubitListener extends StatelessWidget {
  const SignupCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupStates>(
      listenWhen: (previous, current) =>
          current is LoadingSignUpState ||
          current is SuccessSignUpState ||
          current is ErrorSignUpState,
      listener: (context, state) {
        if (state is LoadingSignUpState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator.adaptive(
                valueColor:
                    AlwaysStoppedAnimation<Color>(ColorManger.primaryColor),
              ),
            ),
          );
        } else if (state is ErrorSignUpState) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.apiErrorModel.getAllErrorMessages()),
            ),
          );
        } else if (state is SuccessSignUpState) {
          saveUserToken(state.signupResponse.userData!.token);
          context.pop();
          context.pushReplacementNamed(AppRouteName.mainLayoutPage);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void saveUserToken(String token) async {
    await StorageHelper.setSecuredString(AppStringConstants.userToken, token);
    DioFactory.sendTokenAfterUserLogin(token);
  }
}

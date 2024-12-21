import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginStates>(
      listenWhen: (previous, current) =>
          current is LoadingLoginState ||
          current is ErrorLoginState ||
          current is SuccessLoginState,
      listener: (context, state) {
        if (state is LoadingLoginState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(ColorManger.primaryColor),
              ),
            ),
          );
        } else if (state is ErrorLoginState) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        } else if (state is SuccessLoginState) {
          context.pop();
          context.pushNamedAndRemoveUntil(AppRouteName.homePage);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

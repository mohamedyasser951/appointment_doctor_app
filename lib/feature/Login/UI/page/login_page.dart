import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/feature/Login/UI/widgets/dont_have_account.dart';
import 'package:appointment_app/feature/Login/UI/widgets/email_and_password.dart';
import 'package:appointment_app/feature/Login/UI/widgets/login_bloc_listener.dart';
import 'package:appointment_app/feature/Login/UI/widgets/term_and_conditions.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font32BoldBlue,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14RegularGrey,
                ),
                verticalSpace(35),
                const EmailAndPassword(),
                verticalSpace(20),
                const LoginBlocListener(),
                verticalSpace(6),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Remember me",
                    style: TextStyles.font14RegularBlue,
                  ),
                ),
                verticalSpace(10),
                CustomeButton(
                    text: "Login", onPressed: () => validateAndLogin(context)),
                verticalSpace(10),
                const TermAndConditionsWidget(),
                verticalSpace(30),
                const Center(child: AlreadyHaveAccountWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoadingStates();
    }
  }
}

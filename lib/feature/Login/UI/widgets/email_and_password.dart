import 'package:appointment_app/core/SahredWidgets/custome_text_field.dart';
import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Login/UI/widgets/password_validations.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  // password validation
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().passwordController.addListener(() {
      final password = context.read<LoginCubit>().passwordController.text;
      hasLowercase = AppRegex.hasLowerCase(password);
      hasUppercase = AppRegex.hasUpperCase(password);
      hasSpecialCharacters = AppRegex.hasSpecialCharacter(password);
      hasNumber = AppRegex.hasNumber(password);
      hasMinLength = AppRegex.hasMinLength(password);
      setState(() {});
    });
  }

  @override
  void dispose() {
    // context.read<LoginCubit>().passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomeTextField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (value) {
              if (value!.isEmpty ) {
                return "Please enter Valid email";
              }
              return null;
            },
          ),
          verticalSpace(10),
          CustomeTextField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              // if (value!.isEmpty || !AppRegex.isPasswordValid(value)) {
              //   return "Please enter Valid password";
              // }
              return null;
            },
            hintText: "Password",
            isPassword: true,
            obSecureText: isVisible,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          verticalSpace(10),
          PasswordValidations(
              hasLowercase: hasLowercase,
              hasUppercase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
              isVisible: isVisible)
        ],
      ),
    );
  }
}

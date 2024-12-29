import 'package:appointment_app/core/SahredWidgets/custome_text_field.dart';
import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/SignUp/Logic/SignUp%20Cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    SignupCubit signupCubit = context.read<SignupCubit>();
    return Form(
        key: signupCubit.formKey,
        child: Column(
          children: [
            CustomeTextField(
              controller: signupCubit.nameController,
              textInputType: TextInputType.name,
              hintText: "Name",
              validator: (val) {
                if (val.isNullOrEmpty) {
                  return "Please Enter Your Name";
                }
                return null;
              },
            ),
            verticalSpace(10),
            CustomeTextField(
              controller: signupCubit.emailController,
              textInputType: TextInputType.emailAddress,
              hintText: "Email",
              validator: (val) {
                if (val.isNullOrEmpty) {
                  return "Please Enter Your Email";
                }
                return null;
              },
            ),
            verticalSpace(10),
            CustomeTextField(
              controller: signupCubit.phoneController,
              textInputType: TextInputType.phone,
              hintText: "Phone",
              validator: (val) {
                if (val.isNullOrEmpty || AppRegex.isPhoneNumberValid(val!)) {
                  return "Please Enter Your Phone";
                }
                return null;
              },
            ),
            verticalSpace(10),
            CustomeTextField(
              isPassword: true,
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.visibility_off)),
              controller: signupCubit.passwordController,
              textInputType: TextInputType.visiblePassword,
              hintText: "Password",
              validator: (val) {
                if (val.isNullOrEmpty) {
                  return "Please Enter Your number";
                }
                return null;
              },
            ),
            verticalSpace(10),
            CustomeTextField(
              isPassword: true,
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.visibility_off)),
              controller: signupCubit.confirmPasswordController,
              textInputType: TextInputType.visiblePassword,
              hintText: "Confirm Password",
              validator: (val) {
                if (val != signupCubit.passwordController.text) {
                  return "Please Match Password and Confirm Password";
                }
                return null;
              },
            ),
            verticalSpace(6),
          ],
        ));
  }
}

import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/SahredWidgets/custome_text_field.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/feature/Login/widgets/already_have_account.dart';
import 'package:appointment_app/feature/Login/widgets/term_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isVisible = false;
  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

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
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomeTextField(
                            controller: TextEditingController(),
                            hintText: "Email"),
                        verticalSpace(10),
                        CustomeTextField(
                          controller: TextEditingController(),
                          hintText: "Password",
                          isPassword: true,
                          obSecureText: isVisible,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: Icon(isVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                      ],
                    )),
                verticalSpace(6),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Remember me",
                    style: TextStyles.font14RegularBlue,
                  ),
                ),
                verticalSpace(40),
                CustomeButton(text: "Login", onPressed: () {}),
                verticalSpace(30),
                const TermAndConditionsWidget(),
                verticalSpace(50),
                const Center(child: AlreadyHaveAccountWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

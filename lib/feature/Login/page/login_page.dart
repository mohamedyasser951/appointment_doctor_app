import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/SahredWidgets/custome_text_field.dart';
import 'package:appointment_app/core/constants/text_styles.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60, right: 12, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20.h,
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyles.textStyleSize32BoldBlue,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.textStylesize14Weight400grey,
                ),
                CustomeTextField(
                    controller: TextEditingController(), hintText: "Email"),
                CustomeTextField(
                  controller: TextEditingController(),
                  hintText: "Password",
                  isPassword: true,
                  suffixIconData: Icons.visibility_off,
                ),
                Row(
                  children: [
                    Checkbox.adaptive(value: false, onChanged: (val) {}),
                    const Text(
                      "Remember me",
                      style: TextStyles.textStylesize14Weight400grey,
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: ColorManger.primaryColor),
                        ))
                  ],
                ),
                CustomeButton(text: "Login", onPressed: () {}),
                Center(
                  child: RichText(
                    text: const TextSpan(
                        text: "Already have an account yet?",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "  Sign Up",
                              style: TextStyle(color: ColorManger.primaryColor))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

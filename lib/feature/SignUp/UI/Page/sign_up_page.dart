import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/feature/Login/UI/widgets/term_and_conditions.dart';
import 'package:appointment_app/feature/SignUp/UI/Widgets/already_have_account.dart';
import 'package:appointment_app/feature/SignUp/UI/Widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyles.font32BoldBlue,
            ),
            verticalSpace(8),
            Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: TextStyles.font14RegularGrey,
            ),
            verticalSpace(10),
            const SignUpForm(),
            verticalSpace(10),
            CustomeButton(text: "Create Account", onPressed: () {}),
            verticalSpace(10),
            const TermAndConditionsWidget(),
            verticalSpace(30),
            const Center(child: AlreadyHaveAccountWidget())
          ],
        ),
      ),
    ));
  }
}

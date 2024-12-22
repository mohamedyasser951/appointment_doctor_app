import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Don't have an account? ",
          style: TextStyles.font14RegularGrey,
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamedAndRemoveUntil(AppRouteName.signUpPage);
                },
              text: "Sign Up",
              style: TextStyles.font14RegularBlue,
            ),
          ]),
    );
  }
}

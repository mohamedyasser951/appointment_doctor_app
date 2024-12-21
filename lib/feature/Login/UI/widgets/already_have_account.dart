import 'package:appointment_app/core/theme/text_styles.dart';
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
              text: "Sign Up",
              style: TextStyles.font14RegularBlue,
            ),
          ]),
    );
  }
}

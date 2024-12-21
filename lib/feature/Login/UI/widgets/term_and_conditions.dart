import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TermAndConditionsWidget extends StatelessWidget {
  const TermAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By logging, you agree to our ",
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: "Terms and Conditions",
            style: TextStyles.font14RegularBlue,
          ),
          TextSpan(
            text: " and ",
            style: TextStyles.font14RegularGrey.copyWith(height: 1.5),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.font14RegularBlue,
          ),
        ],
      ),
    );
  }
}

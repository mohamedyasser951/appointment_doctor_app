import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorManger.primaryColor),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              WidgetStateProperty.all(const Size(double.infinity, 52))),
      onPressed: () {
        context.pushNamed(AppRouteName.loginPage);
      },
      child: const Text(
        "Get Started",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomeButton({super.key, required this.text, required this.onPressed});

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
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

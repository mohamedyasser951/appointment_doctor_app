import 'package:flutter/material.dart';
import 'package:appointment_app/core/theme/colors.dart';

class CustomeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final IconData? suffixIconData;
  const CustomeTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.suffixIconData,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      autocorrect: !isPassword,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: ColorManger.seconderyColor,
          suffixIcon: isPassword ? Icon(suffixIconData) : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}

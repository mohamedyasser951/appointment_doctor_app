import 'package:flutter/material.dart';

import 'package:appointment_app/core/theme/colors.dart';

class CustomeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;
  final bool? obSecureText;
  final String? Function(String?)? validator;
  const CustomeTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isPassword = false,
      this.suffixIcon,
      this.obSecureText,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autovalidateMode: AutovalidateMode.always,
      obscureText: obSecureText ?? false,
      // autocorrect: !isPassword,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManger.lightGreyColor),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManger.primaryColor),
            borderRadius: BorderRadius.circular(12)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(12)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(12)),
        hintText: hintText,
        filled: true,
        fillColor: ColorManger.seconderyColor,
        suffixIcon: isPassword ? suffixIcon : null,
      ),
    );
  }
}

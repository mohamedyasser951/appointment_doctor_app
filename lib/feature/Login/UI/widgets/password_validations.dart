import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  final bool isVisible;
  const PasswordValidations(
      {super.key,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength,
      required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPasswordValidation(
            title: "At least 1 lowercase letter", isValid: hasLowercase),
        _buildPasswordValidation(
            title: "At least 1 uppercase letter", isValid: hasUppercase),
        _buildPasswordValidation(
            title: "At least 1 special character",
            isValid: hasSpecialCharacters),
        _buildPasswordValidation(
            title: "At least 1 number", isValid: hasNumber),
        _buildPasswordValidation(
            title: "At least 8 characters", isValid: hasMinLength),
      ],
    );
  }

  Widget _buildPasswordValidation(
      {required String title, required bool isValid}) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.remove_circle,
          color: isValid ? Colors.green : Colors.red,
          size: 17,
        ),
        horizontalSpace(4),
        Text(
          title,
          style: const TextStyle(color: ColorManger.darkBlue),
        )
      ],
    );
  }
}

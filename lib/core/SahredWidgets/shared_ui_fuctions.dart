import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

loadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(ColorManger.primaryColor),
      ),
    ),
  );
}

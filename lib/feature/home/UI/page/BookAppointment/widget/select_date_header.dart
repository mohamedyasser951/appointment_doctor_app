import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SelectDateHeader extends StatelessWidget {
  const SelectDateHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Select Date",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Set Manual",
            style: TextStyle(color: ColorManger.primaryColor),
          ),
        ),
      ],
    );
  }
}

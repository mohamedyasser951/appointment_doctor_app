import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllSpecialization extends StatelessWidget {
  const SeeAllSpecialization({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Doctor Speciality", style: TextStyles.font18BoldDarkBlue),
        Text("See all", style: TextStyles.font14RegularBlue),
      ],
    );
  }
}

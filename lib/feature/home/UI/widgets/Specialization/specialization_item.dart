import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';

class SpecializationItem extends StatelessWidget {
  final SpecializationsData specializationsData;
  const SpecializationItem({super.key, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: ColorManger.lightBlueColor,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(height: 8),
          Text(specializationsData.name ?? "name"),
        ],
      ),
    );
  }
}

import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Specialization/specialization_item.dart';
import 'package:flutter/material.dart';

class SpecializationList extends StatelessWidget {
  final List<SpecializationsData?>? specializationDataList;
  const SpecializationList({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationDataList!.length,
          itemBuilder: (context, index) {
            return SpecializationItem(
              specializationsData: specializationDataList![index]!,
            );
          }),
    );
  }
}

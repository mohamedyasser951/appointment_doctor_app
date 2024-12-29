import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_item.dart';
import 'package:flutter/material.dart';

class DoctorsBuilder extends StatelessWidget {
  final List<Doctors>? doctors;

  const DoctorsBuilder({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: doctors!.length,
        itemBuilder: (context, index) {
          return DoctorsItem(
            doctor: doctors![index],
          );
        });
  }
}

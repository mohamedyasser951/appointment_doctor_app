import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_item.dart';
import 'package:flutter/material.dart';

class DoctorsBuilder extends StatelessWidget {
  final List<DoctorsSpecialization>? doctors;

  const DoctorsBuilder({super.key,required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctors!.length,
          itemBuilder: (context, index) {
            return  DoctorsItem(doctorsSpecialization: doctors![index],);
          }),
    );
  }
}
import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_item.dart';
import 'package:flutter/material.dart';

class DoctorDetailsPage extends StatelessWidget {
  final Doctors doctorDetails;
  const DoctorDetailsPage({super.key, required this.doctorDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          doctorDetails.name ?? "Name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DoctorsItem(doctor: doctorDetails),
                  verticalSpace(10),
                  Text(
                    "Address",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSpace(10),
                  Text(
                    doctorDetails.address ?? "address",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSpace(10),
                  Text(
                    "City",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    doctorDetails.city!.name.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  verticalSpace(10),
                  Text(
                    "Price",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    doctorDetails.appointPrice.toString(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  verticalSpace(40),
                  CustomeButton(
                      text: "Make An Appointment",
                      onPressed: () {
                        context.pushNamed(AppRouteName.makeAppointmentPage);
                      })
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

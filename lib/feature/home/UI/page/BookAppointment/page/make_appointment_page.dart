import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/widget/main_appointment_step.dart';
import 'package:flutter/material.dart';

List<String> times = [
  "08:00 AM",
  "08:30 AM",
  "09:00 AM",
  "09:30 AM",
  "10:00 AM",
  "11:00 AM",
];

class MakeAppointmentPage extends StatelessWidget {
  const MakeAppointmentPage({super.key});

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
          "Book Appointment",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: MainAppointmentSteps()),
    );
  }
}

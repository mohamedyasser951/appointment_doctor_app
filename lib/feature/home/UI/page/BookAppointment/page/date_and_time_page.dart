import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/widget/appointment_type_builder.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/widget/available_time_builder.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/widget/select_date_header.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/widget/selected_date_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateAndTimePage extends StatelessWidget {
  const DateAndTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppointmentPage();
  }
}

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  AppointmentPageState createState() => AppointmentPageState();
}

class AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Selected Date Section
          const SelectDateHeader(),
          const SelectedDateBuilder(),
          verticalSpace(20),

          // Available Time Section
          Text(
            "Available time",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const AvailableTimeBuilder(),
          ),

          // Appointment Type Section
          Text(
            "Appointment Type",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          verticalSpace(6),
          const AppointmentTypeBuilder()
        ],
      ),
    );
  }
}

import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Expanded(child: StepPage()),
      ),
    );
  }
}

// ignore: must_be_immutable
class StepPage extends StatelessWidget {
  StepPage({super.key});
  PageController pageController = PageController();
  final List<String> paymentPages = [
    "Date & Time",
    "Payment",
    "Summary",
  ];
  @override
  Widget build(BuildContext context) {
    return StepIndicatorPageView(
      steps: 3,
      indicatorPosition: IndicatorPosition.top,
      verticalPadding: 10,
      labels: List<String>.generate(3, (index) => paymentPages[index]),
      controller: pageController,
      completedIcon: Icons.done,
      iconColor: Colors.white,
      iconSize: 15,
      nodeSize: 20.0,
      complete: () {
        //typically, you'd want to put logic that returns true when all the steps
        //are completed here
        return Future.value(true);
      },
      children: List<Widget>.generate(
        3,
        (index) => Container(
          color: const Color(0xffffffff),
          child: Center(
            child: Text(
              "Page ${index + 1}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

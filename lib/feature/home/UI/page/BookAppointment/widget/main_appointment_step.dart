import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/page/date_and_time_page.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/page/payment_page.dart';
import 'package:appointment_app/feature/Home/UI/page/BookAppointment/page/summary_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppointmentSteps extends StatefulWidget {
  const MainAppointmentSteps({super.key});

  @override
  MainAppointmentStepsState createState() => MainAppointmentStepsState();
}

class MainAppointmentStepsState extends State<MainAppointmentSteps> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> steps = [
      {"label": "Date & Time", "isActive": _currentStep >= 0},
      {"label": "Payment", "isActive": _currentStep >= 1},
      {"label": "Summary", "isActive": _currentStep >= 2},
    ];

    List<Widget> appointmentSteps = [
      const DateAndTimePage(),
      const PaymentPage(),
      const SummaryPage(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(steps.length, (index) {
                final step = steps[index];
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 24.r,
                          backgroundColor: step['isActive']
                              ? ColorManger.primaryColor
                              : Colors.grey.shade300,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                              color: step['isActive']
                                  ? Colors.white
                                  : Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Step Line
                        if (index != steps.length - 1)
                          Container(
                            height: 2,
                            color: steps[index + 1]['isActive']
                                ? ColorManger.primaryColor
                                : Colors.grey.shade300,
                          ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      step['label']!,
                      style: TextStyle(
                        color: step['isActive']
                            ? Colors.black
                            : Colors.grey.shade600,
                        fontWeight: step['isActive']
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),

          //Body

          Expanded(child: appointmentSteps[_currentStep]),

          // Navigation Buttons

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentStep > 0
                      ? () {
                          setState(() {
                            _currentStep--;
                          });
                        }
                      : null,
                  child: const Text("Previous"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManger.primaryColor),
                  onPressed: _currentStep < steps.length - 1
                      ? () {
                          setState(() {
                            _currentStep++;
                          });
                        }
                      : null,
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

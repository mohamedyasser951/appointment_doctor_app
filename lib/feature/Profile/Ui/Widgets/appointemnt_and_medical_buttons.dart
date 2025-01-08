import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppointemntAndMedicalButtons extends StatefulWidget {
  const AppointemntAndMedicalButtons({super.key});

  @override
  State<AppointemntAndMedicalButtons> createState() =>
      _AppointemntAndMedicalButtonsState();
}

class _AppointemntAndMedicalButtonsState
    extends State<AppointemntAndMedicalButtons> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
                context.pushNamed(AppRouteName.myAppointmentPage);
              },
              style: selectedIndex == 0
                  ? ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  : OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: ColorManger.primaryColor),
                    ),
              child: const Text(
                "My Appointment",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {});
                selectedIndex = 1;
              },
              style: selectedIndex == 1
                  ? ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  : OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: ColorManger.primaryColor),
                    ),
              child: const Text(
                "Medical records",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

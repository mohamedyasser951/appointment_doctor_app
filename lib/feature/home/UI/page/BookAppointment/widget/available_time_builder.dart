import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AvailableTimeBuilder extends StatefulWidget {
  const AvailableTimeBuilder({super.key});

  @override
  State<AvailableTimeBuilder> createState() => _AvailableTimeBuilderState();
}

class _AvailableTimeBuilderState extends State<AvailableTimeBuilder> {
  final List<String> times = [
    "08.00 AM",
    "08.30 AM",
    "09.00 AM",
    "09.30 AM",
    "10.00 AM",
    "11.00 AM"
  ];
  int _selectedTimeIndex = -1; // Default unselected time

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.5,
      ),
      itemCount: times.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedTimeIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _selectedTimeIndex == index
                  ? ColorManger.primaryColor
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                times[index],
                style: TextStyle(
                  color:
                      _selectedTimeIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

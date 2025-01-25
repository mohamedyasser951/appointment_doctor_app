import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SelectedDateBuilder extends StatefulWidget {
  const SelectedDateBuilder({super.key});

  @override
  State<SelectedDateBuilder> createState() => _SelectedDateBuilderState();
}

class _SelectedDateBuilderState extends State<SelectedDateBuilder> {
  int _selectedDateIndex = 2; // Default selected date

  final List<String> dates = ["Mon 06", "Tue 07", "Wed 08", "Thu 09", "Fri 10"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedDateIndex = index;
              });
            },
            child: Container(
              width: 70,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: _selectedDateIndex == index
                    ? ColorManger.primaryColor
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dates[index].split(" ")[0],
                    style: TextStyle(
                      color: _selectedDateIndex == index
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    dates[index].split(" ")[1],
                    style: TextStyle(
                      color: _selectedDateIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

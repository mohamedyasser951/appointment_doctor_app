import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppointmentTypeBuilder extends StatefulWidget {
  const AppointmentTypeBuilder({super.key});

  @override
  State<AppointmentTypeBuilder> createState() => _AppointmentTypeBuilderState();
}

class _AppointmentTypeBuilderState extends State<AppointmentTypeBuilder> {
  int _selectedAppointmentType = 0; // Default appointment type

  final List<Map<String, dynamic>> appointmentTypes = [
    {"label": "In Person", "icon": Icons.person},
    {"label": "Video Call", "icon": Icons.videocam},
    {"label": "Phone Call", "icon": Icons.phone},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: appointmentTypes.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            setState(() {
              _selectedAppointmentType = index;
            });
          },
          leading: CircleAvatar(
            backgroundColor: _selectedAppointmentType == index
                ? ColorManger.primaryColor
                : Colors.grey.shade200,
            child: Icon(
              appointmentTypes[index]['icon'],
              color: _selectedAppointmentType == index
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          title: Text(appointmentTypes[index]['label']),
          trailing: Radio(
            value: index,
            groupValue: _selectedAppointmentType,
            onChanged: (value) {
              setState(() {
                _selectedAppointmentType = value as int;
              });
            },
          ),
        );
      },
    );
  }
}

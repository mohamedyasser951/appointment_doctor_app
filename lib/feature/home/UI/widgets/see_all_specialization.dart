import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SeeAllSpecialization extends StatelessWidget {
  const SeeAllSpecialization({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Doctor Speciality",
              style: Theme.of(context).textTheme.bodyLarge),
          Text(
            "See all",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorManger.primaryColor),
          ),
        ],
      ),
    );
  }
}

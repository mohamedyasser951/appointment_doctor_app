import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecializationItem extends StatelessWidget {
  final SpecializationsData specializationsData;
  final int itemInex;
  final int selectedIndex;
  const SpecializationItem(
      {super.key,
      required this.specializationsData,
      required this.itemInex,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: itemInex == 0 ? 0 : 16),
      child: Column(
        children: [
          selectedIndex == itemInex
              ? Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 29,
                      backgroundColor: ColorManger.darkBlue,
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: ColorManger.lightBlueColor,
                      child: SvgPicture.asset(
                        specializationsData.image,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManger.lightBlueColor,
                  child: SvgPicture.asset(
                    specializationsData.image,
                    fit: BoxFit.scaleDown,
                  ),
                ),
          verticalSpace(6),
          Text(specializationsData.name ?? "name",
              style: selectedIndex == itemInex
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500)
                  : Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              ? Container(
                  height: 65.h,
                  width: 65.w,
                  decoration: const BoxDecoration(
                    color: ColorManger.darkBlue,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorManger.darkBlue,
                  ),
                )
              : const CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManger.lightBlueColor,
                ),
          verticalSpace(8),
          Text(specializationsData.name ?? "name",
              style: selectedIndex == itemInex
                  ? TextStyles.font14RegularBlue.copyWith(
                      color: ColorManger.darkBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)
                  : TextStyles.font11RegularMoreGrey),
        ],
      ),
    );
  }
}

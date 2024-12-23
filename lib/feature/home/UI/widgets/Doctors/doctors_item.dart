import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';

class DoctorsItem extends StatelessWidget {
  final Doctors doctor;
  const DoctorsItem({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110.h,
            width: 110.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage(
                      ImageAsset.imagesDoctorsDoctor1,
                    ),
                    fit: BoxFit.cover),
                color: ColorManger.primaryColor),
          ),
          horizontalSpace(8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor.name ?? 'Name',
                  style: TextStyles.font18BoldDarkBlue,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                verticalSpace(6),
                Text(
                  "${doctor.degree} || ${doctor.phone}",
                  style: TextStyles.font14RegularBlue,
                ),
                verticalSpace(6),
                Text(
                  doctor.email ?? "Email",
                  style: TextStyles.font14RegularGrey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

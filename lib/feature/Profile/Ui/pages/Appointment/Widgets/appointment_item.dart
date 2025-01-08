import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_response_body.dart';

class AppointmentItem extends StatelessWidget {
  final AppointmentData appointmentData;
  const AppointmentItem({
    super.key,
    required this.appointmentData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  appointmentData.appointmentTime.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "${appointmentData.appointmentPrice}\$",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.red),
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(
                              appointmentData.doctor!.getRandowDoctorImage),
                          fit: BoxFit.cover),
                      color: ColorManger.primaryColor),
                ),
                horizontalSpace(8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentData.doctor!.name!,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: ColorManger.primaryColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      verticalSpace(6),
                      Text(
                        appointmentData.doctor!.email!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      verticalSpace(6),
                      Text(
                        appointmentData.doctor!.phone!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      verticalSpace(6),
                      Text(
                        "${appointmentData.doctor!.description!} ",
                        // style: TextStyles.font14RegularGrey,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

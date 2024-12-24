import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 195.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 165.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(ImageAsset.imagesBlueContainerBakground),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book and\nschedule with\nnearest doctor",
                    style: TextStyles.font18BoldWhite,
                  ),
                  verticalSpace(6.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                      ),
                      child: Text(
                        "Find Nearby",
                        style: TextStyles.font14RegularBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 8.w,
              top: 0,
              child: Image.asset(
                ImageAsset.imagesBlueContainerDoctor,
                height: 195.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}

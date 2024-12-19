import 'package:appointment_app/core/constants/text_styles.dart';
import 'package:appointment_app/feature/onBoardingPage/widget/docdoc_logo_text.dart';
import 'package:appointment_app/feature/onBoardingPage/widget/doctor_image_and_text.dart';
import 'package:appointment_app/feature/onBoardingPage/widget/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8.0,
              ),
              const DocdocLogoText(),
              const DoctorImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 10.h,
                  children: const [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.textStylesize14Weight400grey,
                      textAlign: TextAlign.center,
                    ),
                    GetStartButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

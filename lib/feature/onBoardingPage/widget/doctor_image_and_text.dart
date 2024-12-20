import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(ImageAsset.svgsBackgroundLogo),
        Container(
            alignment: Alignment.center,
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withAlpha(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            )),
            child: Image.asset(
              ImageAsset.imagesDoctorImage,
              fit: BoxFit.scaleDown,
            )),
        Positioned(
            bottom: 25,
            right: 0,
            left: 0,
            child: Text(
              "Best Doctor Appointment App",
              style: TextStyles.font32BoldBlue.copyWith(height: 1.1),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}

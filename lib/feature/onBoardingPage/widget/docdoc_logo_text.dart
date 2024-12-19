import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocdocLogoText extends StatelessWidget {
  const DocdocLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(ImageAsset.svgsDocdocLogo),
        const Text(
          "Docdoc",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

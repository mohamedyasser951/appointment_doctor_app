import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Profile"),
        SvgPicture.asset(ImageAsset.svgsAlert),
      ],
    );
  }
}

import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Profile",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          GestureDetector(
            onTap: () {
              context.pushNamed(AppRouteName.profileSettingPage);
            },
            child: SvgPicture.asset(
              ImageAsset.svgsProfileSetting,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      pinned: true,
      actions: [
        CircleAvatar(
          backgroundColor: ColorManger.lightGreyColor,
          radius: 24,
          child: SvgPicture.asset(ImageAsset.svgsAlert),
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Mohamed!",
                style: TextStyles.font18BoldDarkBlue,
              ),
              Text("How Are you Today?",
                  style: TextStyles.font11RegularMoreGrey),
            ],
          ),
        ],
      ),
    );
  }
}

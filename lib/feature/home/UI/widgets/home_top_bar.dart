import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      // backgroundColor: Colors.white,
      pinned: true,
      actions: [
        CircleAvatar(
          // backgroundColor: ColorManger.lightGreyColor,
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
                // style: TextStyles.font18BoldDarkBlue,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: ColorManger.primaryColor),
              ),
              Text("How Are you Today?",
                  // style: TextStyles.font11RegularMoreGrey,
                  style: Theme.of(context).textTheme.bodySmall!),
            ],
          ),
        ],
      ),
    );
  }
}

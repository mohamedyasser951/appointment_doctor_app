import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_list_item.dart';
import 'package:flutter/material.dart';

class PersonalInformationAndPayment extends StatelessWidget {
  const PersonalInformationAndPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              context.pushNamed(AppRouteName.personalInformationPage);
            },
            child: const ProfileListItem(
              svgIcon: ImageAsset.svgsProfilePersonalcard,
              text: "Personal Information",
              color: Color(0xffEAF2FF),
            ),
          ),
          const ProfileListItem(
            svgIcon: ImageAsset.svgsProfileSetting,
            text: "My Test & Diagnostic",
            color: Color(0xffE9FAEF),
          ),
          const ProfileListItem(
            svgIcon: ImageAsset.svgsProfileWallet,
            text: "Payment",
            color: Color(0xffFFEEEF),
          ),
        ],
      ),
    );
  }
}

import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/appointemnt_and_medical_buttons.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_list_item.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const ProfileTopBar(),
              verticalSpace(10),
              const UserAvatarAndName(),
              verticalSpace(10),
              const AppointemntAndMedicalButtons(),
              verticalSpace(18),
              const PersonalInformationAndPayment(),
            ],
          ),
        ));
  }
}

class UserAvatarAndName extends StatelessWidget {
  const UserAvatarAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 50,
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: ColorManger.lightBlueColor,
            child: Icon(Icons.person, size: 50, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            "Mohamed Yasser",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "mohamedyasser814@gmail.com",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalInformationAndPayment extends StatelessWidget {
  const PersonalInformationAndPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ProfileListItem(
            svgIcon: ImageAsset.svgsProfilePersonalcard,
            text: "Personal Information",
            color: Color(0xffEAF2FF),
          ),
          ProfileListItem(
            svgIcon: ImageAsset.svgsProfileSetting,
            text: "My Test & Diagnostic",
            color: Color(0xffE9FAEF),
          ),
          ProfileListItem(
            svgIcon: ImageAsset.svgsProfileWallet,
            text: "Payment",
            color: Color(0xffFFEEEF),
          ),
        ],
      ),
    );
  }
}

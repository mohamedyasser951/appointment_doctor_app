import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_cubit.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_states.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/appointemnt_and_medical_buttons.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_list_item.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<ProfileCubit, ProfileStates>(
      buildWhen: (previous, current) =>
          current is GetProfileLoadingState ||
          current is GetPofileSuccessState ||
          current is GetProfileErrorState,
      builder: (context, state) {
        if (state is GetProfileLoadingState) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is GetProfileErrorState) {
          return Center(
            child: Text(state.errorModel.message),
          );
        } else if (state is GetPofileSuccessState) {
          return Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: ColorManger.lightBlueColor,
                child: Icon(Icons.person, size: 50, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text(
                state.usermodel.userData?[0].name ?? 'Name',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                state.usermodel.userData?[0].email ?? "email",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
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

import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:appointment_app/feature/Profile/Data/repository/profile_repo.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileRepo profileRepo;
  ProfileCubit({required this.profileRepo})
      : super(const ProfileStates.profileInitialState());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void getUserProfile() async {
    emit(const ProfileStates.getProfileLoadingState());
    final response = await profileRepo.getUserPofile();
    response.when(
      success: (usermodel) {
        emit(ProfileStates.getPofileSuccessState(usermodel));
        nameController.text = usermodel.userData![0].name;
        emailController.text = usermodel.userData![0].email;
        phoneController.text = usermodel.userData![0].phone;
      },
      failure: (errorModel) =>
          emit(ProfileStates.getPofileErrorState(errorModel)),
    );
  }

  void updateUserProfile(
      UpdateProfileRequestBody updateProfileRequestBody) async {
    emit(const ProfileStates.updateProfileLoadingState());
    final response =
        await profileRepo.updateUserPofile(updateProfileRequestBody);
    response.when(
      success: (updateProfileResponseBody) {
        emit(ProfileStates.updatePofileSuccessState(updateProfileResponseBody));
      },
      failure: (errorModel) =>
          emit(ProfileStates.updatePofileErrorState(errorModel)),
    );
  }

  void validateFormAndUpdateProfile() {
    if (formKey.currentState!.validate()) {
      UpdateProfileRequestBody body = UpdateProfileRequestBody(
          name: nameController.text.trim(),
          email: emailController.text.trim(),
          phone: phoneController.text.trim(),
          gender: 0,
          password: passwordController.text.trim(),
          passwordConfirmation: confirmPasswordController.text.trim());
      updateUserProfile(body);
    }
  }
}

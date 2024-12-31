import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_request_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:appointment_app/feature/Profile/Data/repository/profile_repo.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileRepo profileRepo;
  ProfileCubit({required this.profileRepo})
      : super(const ProfileStates.profileInitialState());

  void getUserProfile() async {
    emit(const ProfileStates.getProfileLoadingState());
    final response = await profileRepo.getUserPofile();
    response.when(
      success: (usermodel) =>
          emit(ProfileStates.getPofileSuccessState(usermodel)),
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
      success: (updateProfileResponseBody) => emit(
          ProfileStates.updatePofileSuccessState(updateProfileResponseBody)),
      failure: (errorModel) =>
          emit(ProfileStates.getPofileErrorState(errorModel)),
    );
  }
}

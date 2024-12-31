import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/feature/Profile/Data/models/GetProfile/user_data_model.dart';
import 'package:appointment_app/feature/Profile/Data/models/UpdateProfile/update_profile_response_body.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_states.freezed.dart';

@freezed
class ProfileStates<T> with _$ProfileStates {
  const factory ProfileStates.profileInitialState() = _profileInitialState;

  // Get User Pofile Data
  const factory ProfileStates.getProfileLoadingState() = GetProfileLoadingState;
  const factory ProfileStates.getPofileSuccessState(UserDataModel usermodel) =
      GetPofileSuccessState;
  const factory ProfileStates.getPofileErrorState(ApiErrorModel errorModel) =
      GetProfileErrorState;

  // Update User Pofile Data
  const factory ProfileStates.updateProfileLoadingState() =
      UpdateProfileLoadingState;

  const factory ProfileStates.updatePofileSuccessState(
          UpdateProfileResponseBody updateProfileResponseBody) =
      UpdatePofileSuccessState;
  const factory ProfileStates.updatePofileErrorState(ApiErrorModel errorModel) =
      UpdateProfileErrorState;
}

import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_states.freezed.dart';

@freezed
class HomeStates<T> with _$HomeStates<T> {
  const factory HomeStates.initial() = _IntialHomeState;

// Specializations
  const factory HomeStates.specializationsLoading() = specializationsLoading;
  const factory HomeStates.specializationsSuccess(
          SpecializationsResponseModel specializationsResponseModel) =
      specializationsSuccess;
  const factory HomeStates.specializationsError({required String error}) =
      SpecializationsError;
}

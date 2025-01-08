import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_response_body.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_states.freezed.dart';

@Freezed()
class AppointmentStates<T> with _$AppointmentStates<T> {
  const factory AppointmentStates.appointmentInitial() = _AppointmentInitial;

  //Get All AppointMent
  const factory AppointmentStates.getAllAppointmentsLoading() =
      GetAllAppointmentsLoading;

  const factory AppointmentStates.getAllAppointmentsSuccess(
          AppointmentResponseBody appointmentResponseBody) =
      GetAllAppointmentsSuccess;

  const factory AppointmentStates.getAllAppointmentsError(
      ApiErrorModel apiErrorModel) = GetAllAppointmentsError;
}

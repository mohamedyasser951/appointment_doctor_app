import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:appointment_app/feature/Home/Data/repository/home_repo.dart';
import 'package:appointment_app/feature/Home/Logic/AppointmentCubit/appointment_states.dart';

class AppointmentCubit extends Cubit<AppointmentStates> {
  HomeRepo repo;
  AppointmentCubit({
    required this.repo,
  }) : super(const AppointmentStates.appointmentInitial());

  void getAllAppointment() async {
    emit(const AppointmentStates.getAllAppointmentsLoading());
    final response = await repo.getAllAppointments();
    response.when(
      success: (appointmentResponseBody) => emit(
          AppointmentStates.getAllAppointmentsSuccess(appointmentResponseBody)),
      failure: (apiErrorModel) =>
          emit(AppointmentStates.getAllAppointmentsError(apiErrorModel)),
    );
  }
}

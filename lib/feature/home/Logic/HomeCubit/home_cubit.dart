import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/feature/Home/Data/repository/home_repo.dart';
import 'package:appointment_app/feature/Home/Logic/HomeCubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;
  HomeCubit({
    required this.homeRepo,
  }) : super(const HomeStates.initial());

  List<SpecializationsData?>? specializationsDataList = [];

  void emitspecializationState() async {
    emit(const HomeStates.specializationsLoading());

    final response = await homeRepo.getSpecialization();
    response.when(
        success: (specializations) {
          emit(HomeStates.specializationsSuccess(
              specializations.specializationDataList));
          specializationsDataList = specializations.specializationDataList;
          emitDoctorsList(specializationsDataList!.first!.id!);
        },
        failure: (apiErrorModel) => emit(HomeStates.specializationsError(
            apiErrorModel: apiErrorModel)));
  }

  emitDoctorsList(int specialistIndex) {
    List<Doctors> doctors = getDoctorsListBySpecializationId(specialistIndex);
    if (doctors.isNotEmpty) {
      emit(DoctorsSuccess(doctors));
    } else {
      emit(const DoctorsError(error: "No Doctors Founded.."));
    }
  }

  getDoctorsListBySpecializationId(int specialistIndex) {
    return specializationsDataList!
        .firstWhere(
          (element) => element!.id == specialistIndex,
        )!
        .doctors;
  }
}

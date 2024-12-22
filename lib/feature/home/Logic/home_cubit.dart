import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/feature/Home/Data/repository/home_repo.dart';
import 'package:appointment_app/feature/Home/Logic/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;
  HomeCubit({
    required this.homeRepo,
  }) : super(const HomeStates.initial());

  void emitspecializationState() async {
    emit(const HomeStates.specializationsLoading());
    final response = await homeRepo.getSpecialization();
    response.when(
        success: (specializations) {
          emit(HomeStates.specializationsSuccess(specializations));
        },
        failure: (errorHandler) => emit(HomeStates.specializationsError(
            error: errorHandler.apiErrorModel.message)));
  }
}

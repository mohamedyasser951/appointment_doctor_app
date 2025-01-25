import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Search/Data/Repository/search_repo.dart';
import 'package:appointment_app/feature/Search/Logic/Search%20Cubit/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchRepo searchRepo;
  SearchCubit({required this.searchRepo})
      : super(const SearchStates.searchInitialState());

  List<Doctors> doctorsResults = [];

  void search(String query) async {
    emit(const SearchStates.searchLoadingState());
    final result = await searchRepo.getAllDoctors();

    result.when(
      success: (data) {
        final results = data.allDoctors
            .where((item) =>
                item.name!.toLowerCase().contains(query.toLowerCase()))
            .toList();
        doctorsResults = results;
        emit(SearchStates.searchSuccessState(doctorsResults));
      },
      failure: (apiErrorModel) =>
          emit(SearchStates.searchErrorState(apiErrorModel)),
    );
  }
}

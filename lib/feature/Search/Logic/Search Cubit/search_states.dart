import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_states.freezed.dart';

@freezed
class SearchStates<T> with _$SearchStates<T> {
  const factory SearchStates.searchInitialState() = _SearchInitial;
  const factory SearchStates.searchLoadingState() = SearchLoading;
  const factory SearchStates.searchSuccessState(List<Doctors> data) = SearchSuccess;
  const factory SearchStates.searchErrorState(ApiErrorModel apiErrorModel) =
      SearchError;
}

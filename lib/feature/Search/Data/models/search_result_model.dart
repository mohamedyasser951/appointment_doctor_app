import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'search_result_model.g.dart';

@JsonSerializable()
class SearchResultModel {
  String message;
  @JsonKey(name: 'data')
  List<Doctors> allDoctors;

  SearchResultModel({required this.message, required this.allDoctors});

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);
}

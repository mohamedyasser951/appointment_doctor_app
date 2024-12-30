import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final int? code;
  final String message;
  @JsonKey(name: "data")
  Map<String, dynamic>? errors;

  ApiErrorModel({this.code, this.errors, required this.message});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMessages() {
    if (errors == null && errors?.values == null) return message ;
    final errorMessage = errors!.entries.map((entry) {
      final value = entry.value;
      return "${value.join(",")}";
    }).join("\n");
    print(errorMessage);
    return errorMessage;
  }
}

import 'package:json_annotation/json_annotation.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable( )
class SpecializationsResponseModel{
   @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationDataList;

  SpecializationsResponseModel({
    this.specializationDataList,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<DoctorsSpecialization>? doctors;

  SpecializationsData({this.id, this.name, this.doctors});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class DoctorsSpecialization {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  DoctorsSpecialization({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });

  factory DoctorsSpecialization.fromJson(Map<String, dynamic> json) =>
      _$DoctorsSpecializationFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;

  City({this.id, this.name});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

import 'dart:math';

import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
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
  List<Doctors>? doctors;

  SpecializationsData({this.id, this.name, this.doctors});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);

  static const Map<String, String> specialityImages = {
    "Cardiology": ImageAsset.svgsSpecialityCardiologist,
    "Dermatology": ImageAsset.svgsSpecialityHepatology,
    "Neurology": ImageAsset.svgsSpecialityHistologist,
    "Orthopedics": ImageAsset.svgsSpecialityEnt,
    "Pediatrics": ImageAsset.svgsSpecialityPulmonary,
    "Gynecology": ImageAsset.svgsSpecialityBaby,
    "Ophthalmology": ImageAsset.svgsSpecialityOptometry,
    "Urology": ImageAsset.svgsSpecialityIntestine,
    "Gastroenterology": ImageAsset.svgsSpecialityKidneys,
    "Psychiatry": ImageAsset.svgsSpecialityBrain,
  };
  static const String defaultImage = ImageAsset.svgsSpecialityDentistry;

  String get image {
    return specialityImages[name] ?? defaultImage;
  }
}

@JsonSerializable()
class Doctors {
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

  Doctors({
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

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  String get getRandowDoctorImage {
    final random = Random();

    List<String> doctorsImage = [
      ImageAsset.imagesDoctorsDoctor1,
      ImageAsset.imagesDoctorsDoctor2,
      ImageAsset.imagesDoctorsDoctor3,
      ImageAsset.imagesDoctorsDocot4,
    ];

    return doctorsImage[random.nextInt(doctorsImage.length)];
  }
}

@JsonSerializable()
class City {
  int? id;
  String? name;

  City({this.id, this.name});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

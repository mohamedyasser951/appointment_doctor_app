import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'appointment_response_body.g.dart';

@JsonSerializable()

/// This is The wrapper class for the response of the appointment API
class AppointmentResponseBody {
  final String? message;
  @JsonKey(name: "data")
  List<AppointmentData>? appointmentData;
  final bool? status;
  final int? code;

  AppointmentResponseBody(
      {this.message, this.appointmentData, this.status, this.code});

  factory AppointmentResponseBody.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List) {
      return _$AppointmentResponseBodyFromJson(json);
    } else if (json['data'] is Map<String, dynamic>) {
      return AppointmentResponseBody(
        message: json['message'],
        status: json['status'],
        code: json['code'],
        appointmentData: [AppointmentData.fromJson(json['data'])],
      );
    } else {
      throw Exception('Unexpected JSON format');
    }
  }
}

@JsonSerializable()
class AppointmentData {
  int? id;
  Doctors? doctor;
  Patient? patient;
  @JsonKey(name: "appointment_time")
  String? appointmentTime;
  @JsonKey(name: "appointment_end_time")
  String? appointmentEndTime;
  String? status;
  String? notes;
  @JsonKey(name: "appointment_price")
  int? appointmentPrice;

  AppointmentData(
      {this.id,
      this.doctor,
      this.patient,
      this.appointmentTime,
      this.appointmentEndTime,
      this.status,
      this.notes,
      this.appointmentPrice});

  factory AppointmentData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDataFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class Patient {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;

  Patient({this.id, this.name, this.email, this.phone, this.gender});

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

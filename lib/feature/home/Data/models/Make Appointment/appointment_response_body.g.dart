// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResponseBody _$AppointmentResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AppointmentResponseBody(
      message: json['message'] as String?,
      appointmentData: (json['data'] as List<dynamic>?)
          ?.map((e) => AppointmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AppointmentResponseBodyToJson(
        AppointmentResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.appointmentData,
      'status': instance.status,
      'code': instance.code,
    };

AppointmentData _$AppointmentDataFromJson(Map<String, dynamic> json) =>
    AppointmentData(
      id: (json['id'] as num?)?.toInt(),
      doctor: json['doctor'] == null
          ? null
          : Doctors.fromJson(json['doctor'] as Map<String, dynamic>),
      patient: json['patient'] == null
          ? null
          : Patient.fromJson(json['patient'] as Map<String, dynamic>),
      appointmentTime: json['appointment_time'] as String?,
      appointmentEndTime: json['appointment_end_time'] as String?,
      status: json['status'] as String?,
      notes: json['notes'] as String?,
      appointmentPrice: (json['appointment_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AppointmentDataToJson(AppointmentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor': instance.doctor,
      'patient': instance.patient,
      'appointment_time': instance.appointmentTime,
      'appointment_end_time': instance.appointmentEndTime,
      'status': instance.status,
      'notes': instance.notes,
      'appointment_price': instance.appointmentPrice,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Patient _$PatientFromJson(Map<String, dynamic> json) => Patient(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
    };

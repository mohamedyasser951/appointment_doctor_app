// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentRequestBody _$AppointmentRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AppointmentRequestBody(
      doctorId: (json['doctor_id'] as num).toInt(),
      startTime: json['start_time'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$AppointmentRequestBodyToJson(
        AppointmentRequestBody instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctorId,
      'start_time': instance.startTime,
      'notes': instance.notes,
    };

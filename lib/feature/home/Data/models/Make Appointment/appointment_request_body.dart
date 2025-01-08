import 'package:json_annotation/json_annotation.dart';
part 'appointment_request_body.g.dart';
@JsonSerializable()
class AppointmentRequestBody {
  @JsonKey(name: "doctor_id")
  int doctorId;
  @JsonKey(name: "start_time")
  String startTime;
  String notes;
  AppointmentRequestBody({
    required this.doctorId,
    required this.startTime,
    required this.notes,
  });
  Map<String, dynamic> toJson() => _$AppointmentRequestBodyToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileResponseBody _$UpdateProfileResponseBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileResponseBody(
      message: json['message'] as String,
      userData: UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateProfileResponseBodyToJson(
        UpdateProfileResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

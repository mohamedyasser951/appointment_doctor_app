import 'package:json_annotation/json_annotation.dart';
part 'user_profile_data.g.dart';

@JsonSerializable()
class UserProfileData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String gender;

  UserProfileData(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.gender});

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileDataToJson(this);
}

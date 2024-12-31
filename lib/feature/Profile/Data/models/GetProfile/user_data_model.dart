import 'package:appointment_app/feature/Profile/Data/models/user_profile_data.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_data_model.g.dart';

@JsonSerializable()
class UserDataModel {
  final String message;
  @JsonKey(name: "data")
  List<UserProfileData>? userData;
  final bool status;
  final int code;

  UserDataModel(
      {required this.message,
      required this.userData,
      required this.status,
      required this.code});

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}

// {
//     "message": "Successful query",
//     "data": [
//         {
//             "id": 2947,
//             "name": "mohamed yasser",
//             "email": "kohamedhcjdivdjvy@gmail.com",
//             "phone": "01207864545",
//             "gender": "male"
//         }
//     ],
//     "status": true,
//     "code": 200
// }

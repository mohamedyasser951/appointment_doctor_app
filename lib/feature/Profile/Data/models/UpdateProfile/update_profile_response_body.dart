import 'package:appointment_app/feature/Profile/Data/models/user_profile_data.dart';
import 'package:json_annotation/json_annotation.dart';
part 'update_profile_response_body.g.dart';

@JsonSerializable()
class UpdateProfileResponseBody {
  final String message;
  @JsonKey(name: "data")
  final UserProfileData userData;
  final bool status;
  final int code;
  UpdateProfileResponseBody({required this.message, required this.userData, required this.status, required this.code});

    factory UpdateProfileResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseBodyFromJson(json);

}


// {
//     "message": "Updated Successfully",
//     "data": {
//         "id": 2947,
//         "name": "mohamed yasser",
//         "email": "kohamedhcjdivdjv1y@gmail.com",
//         "phone": "01207864547",
//         "gender": "0",
//         "email_verified_at": null,
//         "created_at": "2024-12-20T19:04:27.000000Z",
//         "updated_at": "2024-12-31T01:08:03.000000Z"
//     },
//     "status": true,
//     "code": 200
// }
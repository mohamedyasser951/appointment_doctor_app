import 'package:appointment_app/core/networking/api_constant.dart';
import 'package:appointment_app/feature/Home/Data/Api/home_api_constant.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_request_body.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_response_body.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstant.specialization)
  Future<SpecializationsResponseModel> getspecialization();

  // Appointment Feature
  @GET(HomeApiConstant.getAllAppointment)
  Future<AppointmentResponseBody> getAllAppointment();

  @POST(HomeApiConstant.makeAppointment)
  Future<AppointmentResponseBody> makeAppointment(
    @Body() AppointmentRequestBody appointmentRequestBody,
  );

}

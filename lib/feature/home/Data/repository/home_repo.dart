import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/feature/Home/Data/Api/home_api_service.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_request_body.dart';
import 'package:appointment_app/feature/Home/Data/models/Make%20Appointment/appointment_response_body.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';

class HomeRepo {
  HomeApiService apiService;
  HomeRepo({
    required this.apiService,
  });

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await apiService.getspecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AppointmentResponseBody>> getAllAppointments() async {
    try {
      final response = await apiService.getAllAppointment();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AppointmentResponseBody>> makeAppointment(
      {required AppointmentRequestBody appointmentRequestBody}) async {
    try {
      final response = await apiService.makeAppointment(appointmentRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

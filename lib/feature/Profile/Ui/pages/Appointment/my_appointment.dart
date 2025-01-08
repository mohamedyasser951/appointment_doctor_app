import 'package:appointment_app/core/SahredWidgets/loading_widget.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/feature/Home/Logic/AppointmentCubit/appointment_cubit.dart';
import 'package:appointment_app/feature/Home/Logic/AppointmentCubit/appointment_states.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/Appointment/Widgets/appointment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppointmentPage extends StatelessWidget {
  const MyAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "Book Appointment",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        child: const AllApointmentBlocBuilder(),
      ),
    );
  }
}

class AllApointmentBlocBuilder extends StatelessWidget {
  const AllApointmentBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentStates>(
      buildWhen: (previous, current) =>
          current is GetAllAppointmentsLoading ||
          current is GetAllAppointmentsSuccess ||
          current is GetAllAppointmentsSuccess,
      builder: (context, state) {
        return state.maybeWhen(getAllAppointmentsLoading: () {
          return const LoadingWidget();
        }, getAllAppointmentsError: (apiErrorModel) {
          return ErrorsWidget(error: apiErrorModel.message);
        }, getAllAppointmentsSuccess: (appointmentResponseBody) {
          return ListView.builder(
            itemCount: appointmentResponseBody.appointmentData!.length,
            itemBuilder: (context, index) => AppointmentItem(
              appointmentData: appointmentResponseBody.appointmentData![index],
            ),
          );
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}

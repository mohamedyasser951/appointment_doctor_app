import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Home/Logic/home_states.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_builder.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Specialization/specialization_builder.dart';
import 'package:appointment_app/feature/Home/UI/widgets/doctor_blue_container.dart';
import 'package:appointment_app/feature/Home/UI/widgets/home_top_bar.dart';
import 'package:appointment_app/feature/Home/UI/widgets/see_all_specialization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 25),
            width: double.infinity,
            child: Column(
              children: [
                const HomeTopBar(),
                verticalSpace(16),
                const DoctorBlueContainer(),
                verticalSpace(16),
                const SeeAllSpecialization(),
                BlocBuilder<HomeCubit, HomeStates>(
                  buildWhen: (previous, current) =>
                      current is specializationsSuccess ||
                      current is specializationsLoading ||
                      current is SpecializationsError,
                  builder: (context, state) {
                    return state.maybeWhen(specializationsLoading: () {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }, specializationsError: (error) {
                      return Center(
                        child: Text(error),
                      );
                    }, specializationsSuccess: (specializationsResponseModel) {
                      return Expanded(
                          child: Column(
                        children: [
                          verticalSpace(8),
                          SpecializationList(
                            specializationDataList: specializationsResponseModel
                                .specializationDataList!,
                          ),
                          verticalSpace(8),
                          DoctorsBuilder(
                            doctors: specializationsResponseModel
                                .specializationDataList![0]!.doctors,
                          )
                        ],
                      ));
                    }, orElse: () {
                      return Container(
                        height: 500,
                        color: Colors.amber,
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

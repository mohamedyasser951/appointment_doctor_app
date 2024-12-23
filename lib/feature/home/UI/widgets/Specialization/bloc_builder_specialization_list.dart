import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Home/Logic/home_states.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Specialization/specialization_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderSpecializationList extends StatelessWidget {
  const BlocBuilderSpecializationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
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
        }, specializationsSuccess: (specializationsList) {
          return SpecializationList(
              specializationDataList: specializationsList);
     
        }, orElse: () {
          return Container(
            height: 500,
            color: Colors.amber,
          );
        });
      },
    );
  }
}

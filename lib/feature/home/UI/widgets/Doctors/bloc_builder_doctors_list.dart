import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Home/Logic/home_states.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderDoctorsList extends StatelessWidget {
  const BlocBuilderDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctors) {
            return DoctorsBuilder(doctors: doctors);
          },
          doctorsError: (error) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text(error),
              ),
            );
          },
          orElse: () {
            return const SliverToBoxAdapter(child: SizedBox.shrink());
          },
        );
      },
    );
  }
}

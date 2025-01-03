import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/bloc_builder_doctors_list.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Specialization/bloc_builder_specialization_list.dart';
import 'package:appointment_app/feature/Home/UI/widgets/doctor_blue_container.dart';
import 'package:appointment_app/feature/Home/UI/widgets/home_top_bar.dart';
import 'package:appointment_app/feature/Home/UI/widgets/see_all_specialization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 25),
        width: double.infinity,
        child: CustomScrollView(
          slivers: [
            const HomeTopBar(),
            SliverToBoxAdapter(child: verticalSpace(4)),
            const DoctorBlueContainer(),
            SliverToBoxAdapter(child: verticalSpace(12)),
            const SeeAllSpecialization(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            const BlocBuilderSpecializationList(),
            SliverToBoxAdapter(child: verticalSpace(6)),
            const BlocBuilderDoctorsList()
          ],
        ),
      ),
    ));
  }
}

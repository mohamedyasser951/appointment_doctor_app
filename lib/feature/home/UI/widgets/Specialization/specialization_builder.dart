import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Specialization/specialization_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationList extends StatefulWidget {
  final List<SpecializationsData?>? specializationDataList;
  const SpecializationList({super.key, required this.specializationDataList});

  @override
  State<SpecializationList> createState() => _SpecializationListState();
}

class _SpecializationListState extends State<SpecializationList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specializationDataList!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                  context.read<HomeCubit>().emitDoctorsList(
                      widget.specializationDataList![index]!.id!);
                },
                child: SpecializationItem(
                  specializationsData: widget.specializationDataList![index]!,
                  itemInex: index,
                  selectedIndex: selectedIndex,
                ),
              );
            }),
      ),
    );
  }
}

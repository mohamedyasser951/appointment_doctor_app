import 'package:appointment_app/core/SahredWidgets/shared_ui_fuctions.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_cubit.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInformationListener extends StatelessWidget {
  const PersonalInformationListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileStates>(
      listenWhen: (previous, current) =>
          current is UpdateProfileLoadingState ||
          current is UpdatePofileSuccessState ||
          current is UpdateProfileErrorState,
      listener: (context, state) {
        if (state is UpdateProfileLoadingState) {
          loadingDialog(context);
        } else if (state is UpdateProfileErrorState) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorModel.getAllErrorMessages()),
              backgroundColor: CupertinoColors.destructiveRed,
            ),
          );
        } else if (state is UpdatePofileSuccessState) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("your personal Information Update Successfuly.."),
              backgroundColor: CupertinoColors.activeGreen,
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

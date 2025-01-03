import 'package:appointment_app/core/SahredWidgets/custom_button.dart';
import 'package:appointment_app/core/SahredWidgets/custome_text_field.dart';
import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_cubit.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_states.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/PersonalInformation/widget/personal_information_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInforamtionPage extends StatelessWidget {
  const PersonalInforamtionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "Personal information",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: BlocProvider.value(
              value: getIt<ProfileCubit>(),
              child: BlocBuilder<ProfileCubit, ProfileStates>(
                builder: (context, state) {
                  ProfileCubit profileCubit = context.read<ProfileCubit>();
                  return Form(
                    key: context.read<ProfileCubit>().formKey,
                    child: Column(
                      children: [
                        CustomeTextField(
                          controller: profileCubit.nameController,
                          textInputType: TextInputType.name,
                          hintText: "Name",
                          validator: (val) {
                            if (val.isNullOrEmpty) {
                              return "Please Enter Your Name";
                            }
                            return null;
                          },
                        ),
                        verticalSpace(16),
                        CustomeTextField(
                          controller: profileCubit.emailController,
                          textInputType: TextInputType.emailAddress,
                          hintText: "Email",
                          validator: (val) {
                            if (val.isNullOrEmpty) {
                              return "Please Enter Your Email";
                            }
                            return null;
                          },
                        ),
                        verticalSpace(16),
                        CustomeTextField(
                          controller: profileCubit.phoneController,
                          textInputType: TextInputType.phone,
                          hintText: "Phone",
                          validator: (val) {
                            if (val.isNullOrEmpty ||
                                AppRegex.isPhoneNumberValid(val!)) {
                              return "Please Enter Valid Phone number";
                            }
                            return null;
                          },
                        ),
                        verticalSpace(16),
                        CustomeTextField(
                          isPassword: true,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_off)),
                          controller: profileCubit.passwordController,
                          textInputType: TextInputType.visiblePassword,
                          hintText: "Password",
                          validator: (val) {
                            if (val.isNullOrEmpty) {
                              return "Please Enter Your password";
                            }
                            return null;
                          },
                        ),
                        verticalSpace(16),
                        CustomeTextField(
                          isPassword: true,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_off)),
                          controller: profileCubit.confirmPasswordController,
                          textInputType: TextInputType.visiblePassword,
                          hintText: "Confirm Password",
                          validator: (val) {
                            if (val != profileCubit.passwordController.text) {
                              return "Please Match Password and Confirm Password";
                            }
                            return null;
                          },
                        ),
                        verticalSpace(12),
                        Text(
                          "When you set up your personal information settings, you should take care to provide accurate information.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        verticalSpace(30),
                        CustomeButton(
                            text: "Save",
                            onPressed: () {
                              profileCubit.validateFormAndUpdateProfile();
                            }),
                        const PersonalInformationListener()
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

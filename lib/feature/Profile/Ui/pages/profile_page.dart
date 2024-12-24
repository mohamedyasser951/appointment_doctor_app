import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Profile/Ui/Widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: ColorManger.primaryColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: const ProfileTopBar()),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}

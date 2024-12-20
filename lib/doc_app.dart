import 'package:appointment_app/core/routing/app_route.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManger.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: AppRouteName.onBoardingPage,
      ),
    );
  }
}

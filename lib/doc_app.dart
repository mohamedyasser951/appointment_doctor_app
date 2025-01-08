import 'package:appointment_app/core/constants/app_strings_constants.dart';
import 'package:appointment_app/core/routing/app_route.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/core/theme/app_theme.dart';
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
        themeAnimationCurve: Curves.easeInOut,
        themeAnimationDuration: Durations.medium1,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.light,
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: AppStringConstants.userLogedIn
            ? AppRouteName.mainLayoutPage
            : AppRouteName.loginPage,
      ),
    );
  }
}

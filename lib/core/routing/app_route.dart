import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Login/UI/page/login_page.dart';
import 'package:appointment_app/feature/onBoardingPage/page/on_boarding_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.onBoardingPage:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      case AppRouteName.loginPage:
        return MaterialPageRoute(
          builder: (context) =>  const LoginPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("This Route Not Founded...."),
            ),
          ),
        );
    }
  }
}

import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Login/UI/page/login_page.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:appointment_app/feature/home/UI/page/home_page.dart';
import 'package:appointment_app/feature/onBoardingPage/page/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.onBoardingPage:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      case AppRouteName.loginPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginPage(),
          ),
        );
      case AppRouteName.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
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

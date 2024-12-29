import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Layout/UI/page/main_layout.dart';
import 'package:appointment_app/feature/Login/UI/page/login_page.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:appointment_app/feature/Home/UI/page/home_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/profile_setting_page.dart';
import 'package:appointment_app/feature/SignUp/Logic/SignUp%20Cubit/signup_cubit.dart';
import 'package:appointment_app/feature/SignUp/UI/Page/sign_up_page.dart';
import 'package:appointment_app/feature/onBoardingPage/page/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
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
      case AppRouteName.signUpPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignupCubit(signupRepo: getIt()),
            child: const SignUpPage(),
          ),
        );
      case AppRouteName.mainLayoutPage:
        return MaterialPageRoute(
          builder: (context) => const MainLayoutPage(),
        );
      case AppRouteName.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case AppRouteName.profileSettingPage:
        return MaterialPageRoute(
          builder: (context) => const ProfileSettingPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const MainLayoutPage(),
        );
    }
  }
}

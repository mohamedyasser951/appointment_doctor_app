import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:appointment_app/feature/Home/Data/models/specializations_response_model.dart';
import 'package:appointment_app/feature/Home/Logic/AppointmentCubit/appointment_cubit.dart';
import 'package:appointment_app/feature/Home/UI/page/doctors_details.dart';
import 'package:appointment_app/feature/Home/UI/page/make_appointment_page.dart';
import 'package:appointment_app/feature/Layout/UI/page/main_layout.dart';
import 'package:appointment_app/feature/Login/UI/page/login_page.dart';
import 'package:appointment_app/feature/Login/logic/LoginCubit/login_cubit.dart';
import 'package:appointment_app/feature/Home/UI/page/home_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/Appointment/my_appointment.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/PersonalInformation/personal_inforamtion_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/ProfileSettings/faq_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/ProfileSettings/notifications_settings_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/ProfileSettings/profile_setting_page.dart';
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
      case AppRouteName.doctorDetailsPage:
        return MaterialPageRoute(
          builder: (context) => DoctorDetailsPage(
            doctorDetails: settings.arguments as Doctors,
          ),
        );
      case AppRouteName.myAppointmentPage:
        return createRouteWithAnimation(BlocProvider(
          create: (context) => getIt<AppointmentCubit>()..getAllAppointment(),
          child: const MyAppointmentPage(),
        ));

      case AppRouteName.makeAppointmentPage:
        return createRouteWithAnimation(const MakeAppointmentPage());

      case AppRouteName.profileSettingPage:
        return createRouteWithAnimation(const ProfileSettingPage());

      case AppRouteName.faqSettingPage:
        return createRouteWithAnimation(FAQPage());

      case AppRouteName.notificationSettingPage:
        return createRouteWithAnimation(const NotificationSettingsPage());

      case AppRouteName.personalInformationPage:
        return createRouteWithAnimation(const PersonalInforamtionPage());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }

  static Route createRouteWithAnimation(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

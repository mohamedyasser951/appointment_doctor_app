import 'package:appointment_app/core/constants/app_strings_constants.dart';
import 'package:appointment_app/core/constants/bloc_observer.dart';
import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/storage_helper.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await checkUserIsLogin();
  Bloc.observer = MyBlocObserver();
  runApp(const DocApp());
}

Future<void> checkUserIsLogin() async {
  String? token =
      await StorageHelper.getSecuredString(AppStringConstants.userToken);
  if (!token.isNullOrEmpty) {
    AppStringConstants.userLogedIn = true;
  } else {
    AppStringConstants.userLogedIn = false;
  }
}

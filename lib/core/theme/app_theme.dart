import 'package:appointment_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  static const TextTheme lightTextTheme = TextTheme(
    headlineSmall: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black54),
    bodySmall: TextStyle(fontSize: 12.0, color: Colors.black45),
    titleLarge: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
  );

  static const TextTheme darkTextTheme = TextTheme(
    headlineSmall: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
    bodySmall: TextStyle(fontSize: 12.0, color: Colors.white),
    titleLarge: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
  );

  static ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme.light(
          brightness: Brightness.light, primary: ColorManger.primaryColor),
      primaryColor: ColorManger.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorManger.seconderyColor,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: ColorManger.seconderyColor,
      ),
      textTheme: lightTextTheme);

  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme.light(
          brightness: Brightness.dark, primary: ColorManger.primaryColor),
      scaffoldBackgroundColor: ColorManger.nightColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManger.nightColor,
        iconTheme: IconThemeData(color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManger.nightColor,
          statusBarIconBrightness: Brightness.light,

        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorManger.nightColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorManger.nightColor,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF1E1E1E),
        hintStyle: TextStyle(color: Colors.white),
        iconColor: Colors.white,
        suffixIconColor: Colors.white,
      ),
      textTheme: darkTextTheme);
}

///
/// | NAME           | SIZE |  WEIGHT |  SPACING |             |
/// |----------------|------|---------|----------|-------------|
/// | displayLarge   | 96.0 | light   | -1.5     |             |
/// | displayMedium  | 60.0 | light   | -0.5     |             |
/// | displaySmall   | 48.0 | regular |  0.0     |             |
/// | headlineMedium | 34.0 | regular |  0.25    |             |
/// | headlineSmall  | 24.0 | regular |  0.0     |             |
/// | titleLarge     | 20.0 | medium  |  0.15    |             |
/// | titleMedium    | 16.0 | regular |  0.15    |             |
/// | titleSmall     | 14.0 | medium  |  0.1     |             |
/// | bodyLarge      | 16.0 | regular |  0.5     |             |
/// | bodyMedium     | 14.0 | regular |  0.25    |             |
/// | bodySmall      | 12.0 | regular |  0.4     |             |
/// | labelLarge     | 14.0 | medium  |  1.25    |             |
/// | labelSmall     | 10.0 | regular |  1.5     |             |

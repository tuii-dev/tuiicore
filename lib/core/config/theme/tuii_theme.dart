import 'package:flutter/material.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

ThemeData getTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: TuiiColors.black,
        fontFamily: 'SF Pro Display',
      ),
      displayMedium: TextStyle(
        color: TuiiColors.black,
        fontFamily: 'SF Pro Display',
      ),
      displaySmall: TextStyle(color: TuiiColors.black),
      headlineMedium: TextStyle(color: TuiiColors.black),
      headlineSmall: TextStyle(
        color: TuiiColors.black,
        fontFamily: 'SF Pro Display',
      ),
      titleLarge: TextStyle(color: TuiiColors.black),
      bodySmall: TextStyle(color: TuiiColors.black),
      bodyLarge: TextStyle(color: TuiiColors.black),
      titleMedium: TextStyle(color: TuiiColors.black),
      titleSmall: TextStyle(color: TuiiColors.black),
      bodyMedium: TextStyle(color: TuiiColors.black),
      labelSmall: TextStyle(color: TuiiColors.black),
      labelLarge: TextStyle(color: TuiiColors.black),
    ),
    scaffoldBackgroundColor: TuiiColors.bgColorScreen,
    fontFamily: 'SF Pro Display',
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: TuiiColors.white),
      color: TuiiColors.defaultColor,
      elevation: 0.0,
      centerTitle: true,
      // ignore: deprecated_member_use
      // textTheme: TextTheme(
      //   headline3: TextStyle(
      //     color: TuiiColors.white,
      //   ),
      // ),
    ),
    primaryColor: TuiiColors.primary,
    buttonTheme: const ButtonThemeData(
      // 4
      buttonColor: TuiiColors.primary,
    ),
    // ignore: deprecated_member_use
    highlightColor: TuiiColors.white,
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: createMaterialColor(TuiiColors.primary))
        .copyWith(background: TuiiColors.bgColorScreen),
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
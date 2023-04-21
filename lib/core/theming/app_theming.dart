import 'package:flutter/material.dart';

part 'app_button_themes.dart';
part 'app_colors.dart';
part 'app_corners.dart';
part 'app_input_theme.dart';
part 'app_shadows.dart';
part 'app_typography.dart';
part 'stadium_input_border.dart';

abstract class AppTheming {
  static final ipad = ThemeData(
    textTheme: AppTextThemes.ipad,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    fontFamily: AppFonts.roboto,
    elevatedButtonTheme: AppButtonThemes.elevatedButtonThemeData,
    outlinedButtonTheme: AppButtonThemes.outlinedButtonThemeData,
    textButtonTheme: AppButtonThemes.textButtonThemeData,
    inputDecorationTheme: AppInputTheme.inputTheme,
    checkboxTheme: CheckboxThemeData(
      fillColor: const MaterialStatePropertyAll(AppColors.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      side: const BorderSide(width: 1),
    ),
  );
}

AppBarTheme appBarTheme = const AppBarTheme(
  color: AppColors.white,
  shadowColor: Colors.transparent,
);

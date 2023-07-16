import 'package:citacoes/config/theme/color_scheme_data.dart';
import 'package:citacoes/config/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorSchemeData.schemeLight,
    fontFamily: 'Dosis',
    scaffoldBackgroundColor: AppColors.selagoBackground,
    textTheme: TextThemeData.textLightTheme,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorSchemeData.schemeDark,
    fontFamily: 'Dosis',
    scaffoldBackgroundColor: AppColors.cloudBrust,
    textTheme: TextThemeData.textDarkTheme,
  );
}

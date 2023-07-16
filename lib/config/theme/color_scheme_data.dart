import 'package:citacoes/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class ColorSchemeData {
  static const schemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.blueRibbon,
    onPrimary: AppColors.skyBlue,
    secondary: AppColors.azureRadiance,
    onSecondary: AppColors.azureRadiance,
    tertiaryContainer: AppColors.brown,
    onTertiaryContainer: AppColors.white,
    error: AppColors.brinkPink,
    onError: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.white,
  );
  static const schemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.cloudBrust,
    onPrimary: AppColors.white,
    secondary: AppColors.skyBlue,
    onSecondary: AppColors.brown,
    tertiaryContainer: AppColors.brown,
    onTertiaryContainer: AppColors.black,
    error: AppColors.brinkPink,
    onError: AppColors.white,
    background: AppColors.brown,
    onBackground: AppColors.white,
    surface: AppColors.black,
    onSurface: AppColors.white,
  );
}

import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppBarThemes {
  static AppBarTheme appBarLigthTheme = AppBarTheme(
    backgroundColor: AppColors.selagoBackground,
    titleTextStyle: TextThemeData.textLightTheme.headlineLarge!.copyWith(
      color: AppColors.black,
    ),
    titleSpacing: 1,
    shadowColor: Colors.transparent,
    elevation: 0,
    actionsIconTheme: const IconThemeData(
      color: AppColors.blueRibbon,
    ),
    toolbarHeight: 50,
  );

  static AppBarTheme appBarDarkTheme = AppBarTheme(
    backgroundColor: AppColors.cloudBrust,
    titleTextStyle: TextThemeData.textLightTheme.headlineLarge!.copyWith(
      color: AppColors.white,
    ),
    titleSpacing: 1,
    shadowColor: Colors.transparent,
    elevation: 0,
    actionsIconTheme: const IconThemeData(
      color: AppColors.white,
    ),
    toolbarHeight: 50,
  );
}

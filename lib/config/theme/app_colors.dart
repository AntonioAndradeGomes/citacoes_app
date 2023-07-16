import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;

  AppColors._();

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  //LIGHT COLORS
  static const Color blueRibbon = Color(0xFF6266F5); //cor do navigator
  static const Color portage =
      Color(0xFF9FA2EF); //cor de quando um item no navigator for selecionado
  static const Color skyBlue = Color(0xFF67D7E7);
  static const Color brinkPink = Color(0xFFF26684); //erro
  static const Color azureRadiance = Color(0xFF4B86F6);
  static const Color selagoBackground = Color(0xFFEFF1FE); //cor de fundo
  static const Color brown = Color(0xff452C2E);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Colors.red;

  //DARK  COLORS
  static const Color cloudBrust = Color(0xFF262A4E);
}

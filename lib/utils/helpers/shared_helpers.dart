import 'package:citacoes/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SharedHelpers {
  static displayDialog({
    required String title,
    required String message,
    Color backgroudColor = AppColors.brinkPink,
  }) {
    Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      backgroundColor: AppColors.brinkPink,
    );
  }
}

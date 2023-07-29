import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimensions {
  static Dimensions? _instance;

  Dimensions._();

  static Dimensions get instance {
    _instance ??= Dimensions._();
    return _instance!;
  }

  //padding para listagens gerais
  EdgeInsets get paddingPrimaryLarge => const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ).w;
  //padding all
  EdgeInsets paddingAll(double value) {
    return EdgeInsets.all(value).w;
  }

  EdgeInsets paddingVertical(double value) =>
      EdgeInsets.symmetric(vertical: value).w;

  EdgeInsets paddingHorizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value).w;

  EdgeInsets paddingOnly({
    double? bottom,
    double? top,
    double? left,
    double? right,
  }) =>
      EdgeInsets.only(
        bottom: bottom ?? 0,
        right: right ?? 0,
        left: left ?? 0,
        top: top ?? 0,
      ).w;
  //Tamanhos de tela, porcentagem
  //largura
  double screenWidthPercent(double percent) {
    return percent.sw;
  }

  //altura
  double screenHeigthPercent(double percent) {
    return percent.sh;
  }

  //bordas
  BorderRadius borderRadius(double value) {
    return BorderRadius.circular(value).w;
  }

  //tamanhos com base na altura
  double sizeBasedOnHeigth(double size) {
    return size.h;
  }

  //tamanhos com base na largura
  double sizeBasedOnWidth(double size) {
    return size.w;
  }

  //citação text size
  double quoteTextSize(int value) {
    if (value == 0) {
      return 16.sp;
    }
    if (value == 1) {
      return 24.sp;
    }
    if (value == 2) {
      return 34.sp;
    }
    return 24.sp;
  }
}

extension DimensionsExtensions on BuildContext {
  Dimensions get dimensions => Dimensions.instance;
}

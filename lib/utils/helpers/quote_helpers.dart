import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SizeText { small, medium, large }

abstract class QuoteHelpers {
  static final Map<int, TextAlign> textAlignMap = {
    0: TextAlign.left,
    1: TextAlign.center,
    2: TextAlign.right,
    3: TextAlign.justify,
  };

  static IconData? textAlignIcon(int textAlign) {
    if (textAlign == 0) {
      return FontAwesomeIcons.alignLeft;
    }
    if (textAlign == 1) {
      return FontAwesomeIcons.alignRight;
    }
    if (textAlign == 2) {
      return FontAwesomeIcons.alignCenter;
    }
    if (textAlign == 3) {
      return FontAwesomeIcons.alignJustify;
    }
    return null;
  }

  static final Map<SizeText, String> textSizeMap = {
    SizeText.small: 'Pequeno',
    SizeText.medium: 'Médio',
    SizeText.large: 'Pequeno',
  };

  static const colors = [
    Color(0xFFF44336),
    Color(0xFFC62828),
    Color(0xFFD32F2F),
    Color(0xFF880E4F),
    Color(0xFFAD1457),
    Color(0xFFC2185B),
    Color(0xFF4A148C),
    Color(0xFF6A1B9A),
    Color(0xFF9C27B0),
    Color(0xFF673AB7),
    Color(0xFF1A237E),
    Color(0xFF3949AB),
    Color(0xFF2196F3),
    Color(0xFF03A9F4),
    Color(0xFF00BCD4),
    Color(0xFF004D40),
    Color(0xFF00897B),
    Color(0xFF1B5E20),
    Color(0xFF4CAF50),
    Color(0xFF8BC34A),
    Color(0xFFCDDC39),
    Color(0xFFFBC02D),
    Color(0xFFF9A825),
    Color(0xFFF57F17),
    Color(0xFFF4511E),
    Color(0xFFBF360C),
    Color(0xFF795548),
    Color(0xFF5D4037),
    Color(0xFF3E2723),
    Color(0xFF607D8B),
    Color(0xFF263238),
    Color(0xFF424242),
    Color(0xFF212121),
  ];
}

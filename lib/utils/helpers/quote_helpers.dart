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
}

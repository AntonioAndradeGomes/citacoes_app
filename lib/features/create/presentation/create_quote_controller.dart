import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuoteController extends GetxController {
  late TextEditingController quoteTextController;
  late TextEditingController authorTextController;
  final _background = Colors.black.obs;
  final _isBold = false.obs;
  final _textAlign = 0.obs;
  late QuoteEntity entity;

  @override
  void onInit() {
    super.onInit();
    entity = Get.arguments['quote'];
    quoteTextController = TextEditingController(
      text: entity.quoteText,
    );
    authorTextController = TextEditingController(
      text: entity.author,
    );
    setBackgroud(Color(entity.backgroudColor));
  }

  Color get background => _background.value;
  bool get isBold => _isBold.value;
  int get textAlign => _textAlign.value;

  void setBackgroud(Color value) => _background.value = value;
  void setBold(bool value) => _isBold.value = value;
  void setTextAlign(int value) => _textAlign.value = value;
}

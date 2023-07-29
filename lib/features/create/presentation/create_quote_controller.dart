import 'package:citacoes/features/create/data/models/save_state.dart';
import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuoteController extends GetxController {
  late TextEditingController quoteTextController;
  late TextEditingController authorTextController;
  final _background = Colors.black.obs;
  final _isBold = false.obs;
  final _textAlign = 0.obs;
  final _textSize = 1.obs;
  final pageState = SaveState.idle.obs;
  late QuoteEntity entity;

  @override
  void onInit() {
    super.onInit();
    pageState.value = SaveState.idle;
    entity = Get.arguments['quote'];
    quoteTextController = TextEditingController(
      text: entity.quoteText,
    );
    authorTextController = TextEditingController(
      text: entity.author,
    );
    setBackgroud(entity.backgroudColorToColor);
  }

  Color get background => _background.value;
  bool get isBold => _isBold.value;
  int get textAlign => _textAlign.value;
  int get textSize => _textSize.value;

  void setBackgroud(Color value) => _background.value = value;
  void setBold(bool value) => _isBold.value = value;
  void setTextAlign(int value) => _textAlign.value = value;
  void setTextSize(int value) => _textSize.value = value;

  Future<void> save() async {
    pageState(SaveState.loading);
    final quote = entity.copyWith(
      quoteText: quoteTextController.text.trim(),
      author: authorTextController.text.trim(),
      backgroudColor: background.value,
      isBold: isBold,
      textAlign: textAlign,
      fontSize: textSize,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    print(quote.toString());
    pageState(SaveState.failure);
  }
}

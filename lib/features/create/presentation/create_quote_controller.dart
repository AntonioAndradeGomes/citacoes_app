import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuoteController extends GetxController {
  late TextEditingController quoteTextController;
  late TextEditingController authorTextController;
  final _background = Colors.black.obs;
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

  void setBackgroud(Color value) => _background.value = value;
}

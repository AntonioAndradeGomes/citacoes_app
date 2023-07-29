import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/utils/helpers/quote_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../create_quote_controller.dart';

class QuoteEditor extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  QuoteEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onBackground;
    final dimensions = context.dimensions;
    return Padding(
      padding: dimensions.paddingOnly(
        bottom: 20,
      ),
      child: Obx(
        () => Container(
          width: dimensions.screenWidthPercent(0.5),
          height: dimensions.screenHeigthPercent(0.5),
          padding: dimensions.paddingAll(10),
          decoration: BoxDecoration(
            color: _controller.background,
            borderRadius: dimensions.borderRadius(20),
          ),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Escreva sua citação aqui...",
                    hintStyle: context.textTheme.bodyMedium?.copyWith(
                      color: textColor,
                    ),
                  ),
                  expands: true,
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.center,
                  autofocus: true,
                  keyboardType: TextInputType.multiline,
                  scrollPadding: dimensions.paddingAll(10),
                  controller: _controller.quoteTextController,
                  style: TextStyle(
                    fontSize: dimensions.quoteTextSize(_controller.textSize),
                    fontWeight: _controller.isBold
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: QuoteHelpers.textAlignMap[_controller.textAlign]!,
                ),
              ),
              const Divider(
                color: AppColors.white,
                thickness: 1,
              ),
              SizedBox(
                height: dimensions.sizeBasedOnHeigth(35),
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Escreva o autor da citação...",
                    hintStyle: context.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: dimensions.borderRadius(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: context.textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
                  controller: _controller.authorTextController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

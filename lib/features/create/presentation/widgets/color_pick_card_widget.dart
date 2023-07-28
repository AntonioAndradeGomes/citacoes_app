import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:citacoes/utils/helpers/quote_helpers.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_widget.dart';

class ColorPickCardWidget extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  ColorPickCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Selecione a cor de fundo',
            style: context.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: dimensions.sizeBasedOnHeigth(8),
          ),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 5,
            runSpacing: 5,
            children: QuoteHelpers.colors
                .map(
                  (e) => ColorWidget(
                    color: e,
                    active: _controller.background == e,
                    onTap: () {
                      _controller.setBackgroud(e);
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

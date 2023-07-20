import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorPickCardWidget extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  ColorPickCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return Obx(
      () => ColorPicker(
        onColorChanged: (value) {
          _controller.setBackgroud(value);
        },
        color: _controller.background,
        width: dimensions.sizeBasedOnWidth(40),
        height: dimensions.sizeBasedOnHeigth(40),
        pickersEnabled: const {
          // ColorPickerType.both: true,
          ColorPickerType.accent: true,
          ColorPickerType.primary: true,
          ColorPickerType.custom: false,
          ColorPickerType.wheel: true,
        },
        wheelDiameter: 150,
        hasBorder: false,
        wheelHasBorder: false,
        wheelSquareBorderRadius: 20,
        columnSpacing: 8,
        runSpacing: 8,
        heading: Text(
          'Selecione a cor de fundo',
          style: context.textTheme.headlineSmall!.copyWith(
            color: AppColors.azureRadiance,
          ),
        ),
        subheading: Text(
          'Selecione a tonalidade da cor',
          style: context.textTheme.titleMedium!.copyWith(
            color: AppColors.azureRadiance,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

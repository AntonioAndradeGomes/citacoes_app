import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:citacoes/features/create/presentation/widgets/text_selector_widget.dart';
import 'package:citacoes/utils/helpers/quote_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectTextSizeWidget extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  SelectTextSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return Padding(
      padding: dimensions.paddingOnly(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Tamanho do texto',
            style: context.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: dimensions.sizeBasedOnHeigth(8),
          ),
          Obx(
            () => Wrap(
              direction: Axis.horizontal,
              children: SizeText.values
                  .map(
                    (e) => TextSelectorWidget(
                      label: e.label,
                      isSelected:
                          SizeText.values.indexOf(e) == _controller.textSize,
                      size: dimensions.sizeBasedOnWidth(70),
                      onTap: () {
                        _controller.setTextSize(SizeText.values.indexOf(e));
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

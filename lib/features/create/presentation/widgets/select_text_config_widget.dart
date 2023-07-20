import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:citacoes/features/create/presentation/widgets/item_icon_selected.dart';
import 'package:citacoes/utils/helpers/quote_helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SelectTextConfigWidget extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  SelectTextConfigWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final dimensions = context.dimensions;
    return Obx(
      () => Wrap(
        direction: Axis.horizontal,
        children: [
          ...QuoteHelpers.textAlignMap.keys
              .map(
                (e) => ItemIconSelected(
                  selected: _controller.textAlign == e,
                  icon: QuoteHelpers.textAlignIcon(e)!,
                  onTap: () {
                    _controller.setTextAlign(e);
                  },
                ),
              )
              .toList(),
          ItemIconSelected(
            selected: !_controller.isBold,
            icon: FontAwesomeIcons.n,
            onTap: () {
              _controller.setBold(false);
            },
          ),
          ItemIconSelected(
            selected: _controller.isBold,
            icon: FontAwesomeIcons.bold,
            onTap: () {
              _controller.setBold(true);
            },
          ),
        ],
      ),
    );
  }
}

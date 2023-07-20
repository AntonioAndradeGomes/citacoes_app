import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/features/create/presentation/widgets/color_pick_card_widget.dart';
import 'package:citacoes/features/create/presentation/widgets/quote_editor.dart';
import 'package:citacoes/features/create/presentation/widgets/select_text_config_widget.dart';
import 'package:flutter/material.dart';

class CreateQuotePage extends StatelessWidget {
  const CreateQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: dimensions.paddingPrimaryLarge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QuoteEditor(),
              SelectTextConfigWidget(),
              ColorPickCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/config/theme/dimensions.dart';
import 'package:citacoes/features/create/data/models/save_state.dart';
import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:citacoes/features/create/presentation/widgets/color_pick_card_widget.dart';
import 'package:citacoes/features/create/presentation/widgets/quote_editor.dart';
import 'package:citacoes/features/create/presentation/widgets/select_text_config_widget.dart';
import 'package:citacoes/features/create/presentation/widgets/select_text_size_widget.dart';
import 'package:citacoes/utils/helpers/loader.dart';
import 'package:citacoes/utils/helpers/shared_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuotePage extends StatefulWidget {
  const CreateQuotePage({super.key});

  @override
  State<CreateQuotePage> createState() => _CreateQuotePageState();
}

class _CreateQuotePageState extends State<CreateQuotePage> with Loader {
  final _controller = Get.find<CreateQuoteController>();

  @override
  void initState() {
    super.initState();
    ever(_controller.pageState, (state) {
      switch (state) {
        case SaveState.idle:
          return;
        case SaveState.loading:
          showLoader();
          return;
        case SaveState.failure:
          hideLoader();
          SharedHelpers.displayDialog(
            title: 'Erro ao cadastrar uma citação.',
            message: 'Tente novamente!',
          );
          _controller.pageState(SaveState.idle);
          return;
        case SaveState.success:
          hideLoader();
          Get.back();
          return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                _save();
              },
              child: Text(
                'SALVAR',
                style: context.textTheme.titleMedium?.copyWith(
                  color:
                      context.isDarkMode ? Colors.white : AppColors.blueRibbon,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: dimensions.paddingPrimaryLarge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QuoteEditor(),
              SelectTextConfigWidget(),
              SelectTextSizeWidget(),
              ColorPickCardWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _save() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_controller.quoteTextController.text.trim().isEmpty) {
      SharedHelpers.displayDialog(
        title: 'Erro ao cadastrar uma citação.',
        message: 'Você precisa digitar o texto da citação.',
      );
      return;
    }
    _controller.save();
  }
}

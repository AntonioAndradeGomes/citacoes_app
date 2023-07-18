import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/features/create/presentation/create_quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuotePage extends StatelessWidget {
  final _controller = Get.find<CreateQuoteController>();
  CreateQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: width * 0.5,
                height: height * 0.5,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.azureRadiance,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: "Escreva sua citação aqui...",
                          hintStyle: context.textTheme.bodyMedium,
                        ),
                        expands: true,
                        maxLines: null,
                        textAlignVertical: TextAlignVertical.center,
                        autofocus: true,
                        keyboardType: TextInputType.multiline,
                        onChanged: (value) {},
                      ),
                    ),
                    Divider(
                      color: AppColors.brinkPink,
                      thickness: 1.5,
                    ),
                    Container(
                      height: height * 0.08,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

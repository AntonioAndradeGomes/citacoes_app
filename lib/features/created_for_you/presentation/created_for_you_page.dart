import 'package:citacoes/config/routes/app_routes.dart';
import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatedForYouPage extends StatelessWidget {
  const CreatedForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            'Criados por você',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.create, arguments: {
                  'quote': QuoteEntity.inital,
                });
              },
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}

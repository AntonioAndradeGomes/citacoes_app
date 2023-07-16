import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/features/splash/presentation/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quote.png",
              height: 40,
              width: 40,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.white
                  : AppColors.black,
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                    ),
                children: [
                  const TextSpan(
                    text: 'Seja\n',
                  ),
                  TextSpan(
                    text: 'Inpirado!',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

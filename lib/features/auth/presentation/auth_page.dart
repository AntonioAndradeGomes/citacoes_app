import 'package:citacoes/config/routes/app_routes.dart';
import 'package:citacoes/config/theme/app_colors.dart';
import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:citacoes/features/auth/presentation/controllers/signin_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  final _controller = Get.find<SigninController>();
  AuthPage({super.key});

  Future<void> _signIn() async {
    final result = await _controller.signInGoogle();
    switch (result) {
      case AuthResult.aborted:
        Get.snackbar(
          'Erro ao fazer login',
          'Você abortou o processo de login.',
          backgroundColor: AppColors.brinkPink,
        );
        return;
      case AuthResult.failure:
        Get.snackbar(
          'Erro ao fazer login',
          'Um erro desconhecido aconteceu.',
          backgroundColor: AppColors.brinkPink,
        );
        return;
      case AuthResult.success:
        Get.offNamed(AppRoutes.home);
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  const TextSpan(
                    text: 'Olá,\n',
                  ),
                  TextSpan(
                    text: 'Bem-vindo ao Citações!',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 25,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.blueRibbon,
                ),
                child: TextButton(
                  onPressed: _controller.loading ? null : _signIn,
                  child: _controller.loading
                      ? const CupertinoActivityIndicator(
                          color: AppColors.white,
                          radius: 16,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.google,
                              color: AppColors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Login com o Google',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColors.white,
                                  ),
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

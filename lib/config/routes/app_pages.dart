import 'package:citacoes/config/routes/app_routes.dart';

import 'package:get/get.dart';
import '../../features/auth/presentation/presentation.dart';
import '../../features/home/presentation/presentation.dart';
import '../../features/splash/presentation/presentation.dart';

abstract class AppPages {
  static String initalPage = AppRoutes.splash;

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.auth,
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      bindings: [
        NavigationBinding(),
      ],
    ),
  ];
}

import 'package:citacoes/features/home/presentation/navigation_controller.dart';
import 'package:get/get.dart';

class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(
      () => NavigationController(),
    );
  }
}

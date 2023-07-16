import 'package:citacoes/features/auth/presentation/controllers/signin_controller.dart';
import 'package:get/get.dart';
import '../domain/usecases/signin_google/signin_google_usecase.dart';
import '../domain/usecases/signin_google/signin_google_usecase_impl.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninGoogleUsecase>(
      () => SigninGoogleUsecaseImpl(
        repository: Get.find(),
      ),
    );
    Get.lazyPut<SigninController>(
      () => SigninController(
        signinGoogleUsecase: Get.find(),
      ),
    );
  }
}

import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:get/get.dart';
import 'package:citacoes/features/auth/domain/usecases/signin_google/signin_google_usecase.dart';

//responsavel pela função de logar no app
class SigninController extends GetxController {
  SigninGoogleUsecase signinGoogleUsecase;
  SigninController({
    required this.signinGoogleUsecase,
  });

  final RxBool _loading = false.obs;

  bool get loading => _loading.value;

  Future<AuthResult> signInGoogle() async {
    _loading(true);
    final result = await signinGoogleUsecase.call();
    final auth = result.fold(
      (success) => success,
      (failure) => AuthResult.failure,
    );
    _loading(false);
    return auth;
  }
}

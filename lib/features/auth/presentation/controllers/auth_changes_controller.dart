import 'package:citacoes/config/routes/app_routes.dart';
import 'package:citacoes/features/auth/data/models/auth_changes_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../domain/usecases/auth_state_changes/get_user_states_changes_usecase.dart';

class AuthChangesController extends GetxController {
  final GetUserStatesChangesUsecase usecase;

  AuthChangesController({
    required this.usecase,
  });

  final Rx<User?> _user = Rx(null);

  User? get user => _user.value;

  final Rx<AuthChangesState> _state = Rx(AuthChangesState.loading);

  AuthChangesState get stateValue => _state.value;

  @override
  void onInit() {
    super.onInit();
    usecase.call().listen((firebaseUser) {
      _user.value = firebaseUser;
      _state.value = firebaseUser != null
          ? AuthChangesState.loggedIn
          : AuthChangesState.notLoggedIn;
      _toPage();
    });
  }

  Future<void> _toPage() async {
    if (Get.currentRoute == AppRoutes.splash) {
      await Future.delayed(
        const Duration(
          seconds: 2,
        ),
      );
    }

    if (stateValue == AuthChangesState.loggedIn) {
      Get.offNamed(AppRoutes.home);
      return;
    }

    if (stateValue == AuthChangesState.notLoggedIn) {
      Get.offNamed(AppRoutes.auth);
      return;
    }
  }
}

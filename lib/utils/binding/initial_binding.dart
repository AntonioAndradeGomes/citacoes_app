import 'package:citacoes/features/auth/domain/domain.dart';
import 'package:citacoes/features/auth/presentation/controllers/auth_changes_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../features/auth/data/data.dart';

class InitialBinding implements Bindings {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  @override
  void dependencies() {
    Get.put(
      firebaseAuth,
    );
    Get.put(
      firebaseFirestore,
    );
    Get.put(
      googleSignIn,
    );

    Get.lazyPut<AuthDatasource>(
      () => AuthFirebaseDatasourceImpl(
        firebaseAuth: Get.find(),
        firebaseFirestore: Get.find(),
        googleSignIn: Get.find(),
      ),
    );

    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        datasource: Get.find(),
      ),
    );

    Get.lazyPut<GetUserStatesChangesUsecase>(
      () => GetUserStatesChangesUsecaseImpl(
        repository: Get.find(),
      ),
    );

    Get.put(
      AuthChangesController(
        usecase: Get.find(),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';

abstract class GetUserStatesChangesUsecase {
  Stream<User?> call();
}

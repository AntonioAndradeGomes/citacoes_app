import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDatasource {
  Future<AuthResult> signInGoogle();
  Future<void> signOut();
  Stream<User?> authStateChanges();
}

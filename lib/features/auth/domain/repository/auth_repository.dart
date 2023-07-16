import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';

abstract class AuthRepository {
  Future<Result<AuthResult, Exception>> signInUserFromGoogle();

  Stream<User?> getUserChanges();

  Future<void> signOut();
}

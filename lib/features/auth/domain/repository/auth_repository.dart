import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';

abstract class AuthRepository {
  Future<Result<AuthResult, CustomException>> signInUserFromGoogle();

  Stream<User?> getUserChanges();

  Future<void> signOut();
}

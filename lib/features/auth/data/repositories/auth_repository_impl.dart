import 'package:citacoes/features/auth/data/datasource/auth_datasourse.dart';
import 'package:citacoes/features/auth/domain/repository/auth_repository.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';
import '../models/auth_result.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl({
    required this.datasource,
  });

  @override
  Stream<User?> getUserChanges() {
    return datasource.authStateChanges();
  }

  @override
  Future<Result<AuthResult, CustomException>> signInUserFromGoogle() async {
    try {
      final result = await datasource.signInGoogle();
      return Success(result);
    } catch (e) {
      return const CustomException(
        title: 'something went wrong',
      ).toFailure();
    }
  }

  @override
  Future<void> signOut() async {
    return await datasource.signOut();
  }
}

import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:result_dart/result_dart.dart';

abstract class SigninGoogleUsecase {
  Future<Result<AuthResult, Exception>> call();
}

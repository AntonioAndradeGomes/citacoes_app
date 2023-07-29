import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:result_dart/result_dart.dart';

abstract class SigninGoogleUsecase {
  Future<Result<AuthResult, CustomException>> call();
}

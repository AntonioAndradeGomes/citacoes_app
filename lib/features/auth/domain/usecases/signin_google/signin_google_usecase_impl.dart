import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:citacoes/features/auth/domain/repository/auth_repository.dart';
import 'package:citacoes/features/auth/domain/usecases/signin_google/signin_google_usecase.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:result_dart/result_dart.dart';

class SigninGoogleUsecaseImpl implements SigninGoogleUsecase {
  AuthRepository repository;

  SigninGoogleUsecaseImpl({
    required this.repository,
  });

  @override
  Future<Result<AuthResult, CustomException>> call() async {
    return await repository.signInUserFromGoogle();
  }
}

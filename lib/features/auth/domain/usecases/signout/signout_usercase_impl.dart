import 'package:citacoes/features/auth/domain/repository/auth_repository.dart';
import 'package:citacoes/features/auth/domain/usecases/signout/signout_usercase.dart';

class SignoutUsercaseImpl implements SignoutUsercase {
  final AuthRepository repository;

  SignoutUsercaseImpl({
    required this.repository,
  });

  @override
  Future<void> call() async {
    return await repository.signOut();
  }
}

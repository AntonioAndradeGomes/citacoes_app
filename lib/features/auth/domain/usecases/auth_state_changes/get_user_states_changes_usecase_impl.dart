import 'package:firebase_auth/firebase_auth.dart';

import 'package:citacoes/features/auth/domain/repository/auth_repository.dart';
import 'package:citacoes/features/auth/domain/usecases/auth_state_changes/get_user_states_changes_usecase.dart';

class GetUserStatesChangesUsecaseImpl implements GetUserStatesChangesUsecase {
  AuthRepository repository;

  GetUserStatesChangesUsecaseImpl({
    required this.repository,
  });

  @override
  Stream<User?> call() {
    return repository.getUserChanges();
  }
}

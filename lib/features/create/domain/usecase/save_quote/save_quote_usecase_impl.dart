import 'package:result_dart/result_dart.dart';
import 'package:citacoes/features/auth/presentation/controllers/auth_changes_controller.dart';
import 'package:citacoes/features/create/domain/repository/quote_repository.dart';
import 'package:citacoes/features/create/domain/usecase/save_quote/save_quote_usecase.dart';
import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:citacoes/utils/error/custom_exception.dart';

class SaveQuoteUsecaseImpl implements SaveQuoteUsecase {
  QuoteRepository repository;
  AuthChangesController authChangesController;

  SaveQuoteUsecaseImpl({
    required this.repository,
    required this.authChangesController,
  });

  @override
  Future<Result<void, CustomException>> call({
    required QuoteEntity quoteEntity,
  }) async {
    final userId = authChangesController.user?.uid;
    if (userId == null) {
      return Result.failure(const CustomException(
        title: 'Problemas no login.',
        message: 'Refaça o login.',
      ));
    }
    if (quoteEntity.userId != null && quoteEntity.userId != userId) {
      return Result.failure(
        const CustomException(
          title: 'Porblema de autorização.',
          message: 'Só podes atualizar uma citação sua.',
        ),
      );
    }
    final quote = quoteEntity.copyWith(
      userId: userId,
    );
    return await repository.saveQuote(quote);
  }
}

import 'package:citacoes/features/create/domain/repository/quote_repository.dart';
import 'package:citacoes/features/create/domain/usecase/save_quote/save_quote_usecase.dart';
import 'package:citacoes/features/shared/entity/quote_entity.dart';

class SaveQuoteUsecaseImpl implements SaveQuoteUsecase {
  QuoteRepository repository;

  SaveQuoteUsecaseImpl({
    required this.repository,
  });

  @override
  Future<void> call({
    required QuoteEntity quoteEntity,
  }) async {
    await repository.saveQuote(quoteEntity);
  }
}

import 'package:citacoes/features/shared/entity/quote_entity.dart';

abstract class SaveQuoteUsecase {
  Future<void> call({
    required QuoteEntity quoteEntity,
  });
}

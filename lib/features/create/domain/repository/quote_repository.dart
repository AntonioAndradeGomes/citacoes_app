import 'package:citacoes/features/shared/entity/quote_entity.dart';

abstract class QuoteRepository {
  Future<void> saveQuote(QuoteEntity quoteEntity);
}

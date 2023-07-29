import 'package:citacoes/features/shared/entity/quote_entity.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveQuoteUsecase {
  Future<Result<void, CustomException>> call({
    required QuoteEntity quoteEntity,
  });
}

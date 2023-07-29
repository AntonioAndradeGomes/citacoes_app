import 'package:citacoes/features/shared/models/quote_model.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:result_dart/result_dart.dart';

abstract class SaveQuoteDatasource {
  Future<Result<void, CustomException>> add({
    required QuoteModel model,
  });
  Future<Result<void, CustomException>> update({
    required QuoteModel model,
  });
}

import '../entity/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  const QuoteModel({
    String? id,
    required String quoteText,
    String? author,
    required int backgroudColor,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isBold,
    required int textAlign,
    required int fontSize,
  }) : super(
          id: id,
          backgroudColor: backgroudColor,
          createdAt: createdAt,
          quoteText: quoteText,
          updatedAt: updatedAt,
          author: author,
          isBold: isBold,
          textAlign: textAlign,
          fontSize: fontSize,
        );
}

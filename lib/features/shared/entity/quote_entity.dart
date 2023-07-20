import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String? id;
  final String quoteText;
  final String? author;
  final int backgroudColor;
  final int textAlign;
  final bool isBold;
  final int fontSize;
  final DateTime createdAt;
  final DateTime updatedAt;

  const QuoteEntity({
    this.id,
    required this.quoteText,
    this.author,
    required this.backgroudColor,
    required this.createdAt,
    required this.updatedAt,
    this.textAlign = 0,
    this.isBold = false,
    this.fontSize = 1,
  });

  static QuoteEntity get inital => QuoteEntity(
        quoteText: '',
        backgroudColor: 4294198070,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        textAlign: 0,
        author: '',
        isBold: false,
        fontSize: 1,
      );

  @override
  List<Object?> get props => [
        id,
        quoteText,
        author,
        backgroudColor,
        createdAt,
        updatedAt,
        isBold,
        textAlign,
        isBold,
        textAlign,
        fontSize,
      ];

  QuoteEntity copyWith({
    String? id,
    String? quoteText,
    String? author,
    int? backgroudColor,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isBold,
    int? textAlign,
    int? fontSize,
  }) {
    return QuoteEntity(
      author: author ?? this.author,
      quoteText: quoteText ?? this.quoteText,
      backgroudColor: backgroudColor ?? this.backgroudColor,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      isBold: isBold ?? this.isBold,
      textAlign: textAlign ?? this.textAlign,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}

import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String? id;
  final String quoteText;
  final String? author;
  final int backgroudColor;
  final DateTime createdAt;
  final DateTime updatedAt;

  const QuoteEntity({
    this.id,
    required this.quoteText,
    this.author,
    required this.backgroudColor,
    required this.createdAt,
    required this.updatedAt,
  });

  static QuoteEntity get inital => QuoteEntity(
        quoteText: '',
        backgroudColor: 4294198070,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  @override
  List<Object?> get props => [
        id,
        quoteText,
        author,
        backgroudColor,
        createdAt,
        updatedAt,
      ];

  QuoteEntity copyWith({
    String? id,
    String? quoteText,
    String? author,
    int? backgroudColor,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return QuoteEntity(
      author: author ?? this.author,
      quoteText: quoteText ?? this.quoteText,
      backgroudColor: backgroudColor ?? this.backgroudColor,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
    );
  }
}

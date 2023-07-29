import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class QuoteEntity extends Equatable {
  final String? id;
  final String? userId;
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
    this.userId,
    required this.quoteText,
    this.author,
    required this.backgroudColor,
    this.textAlign = 0,
    this.isBold = false,
    this.fontSize = 1,
    required this.createdAt,
    required this.updatedAt,
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
        fontSize,
        userId,
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
    String? userId,
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
      userId: userId ?? this.userId,
    );
  }

  Color get backgroudColorToColor => Color(backgroudColor);

  @override
  String toString() {
    return 'QuoteEntity(id: $id, userId: $userId, quoteText: $quoteText, author: $author, backgroudColor: $backgroudColor, textAlign: $textAlign, isBold: $isBold, fontSize: $fontSize, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

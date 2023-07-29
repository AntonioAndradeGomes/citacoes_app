import 'package:cloud_firestore/cloud_firestore.dart';

import '../entity/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  const QuoteModel({
    String? id,
    String? userId,
    required String quoteText,
    String? author,
    required int backgroudColor,
    required int textAlign,
    required bool isBold,
    required int fontSize,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super(
          id: id,
          userId: userId,
          backgroudColor: backgroudColor,
          createdAt: createdAt,
          quoteText: quoteText,
          updatedAt: updatedAt,
          author: author,
          isBold: isBold,
          textAlign: textAlign,
          fontSize: fontSize,
        );

  factory QuoteModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return QuoteModel(
      id: doc.id,
      userId: data['userId'],
      quoteText: data['quoteText'],
      author: data['author'],
      backgroudColor: data['backgroudColor'],
      textAlign: data['textAlign'],
      isBold: data['isBold'],
      fontSize: data['fontSize'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      updatedAt: (data['updatedAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'quoteText': quoteText,
      'author': author,
      'backgroudColor': backgroudColor,
      'textAlign': textAlign,
      'isBold': isBold,
      'fontSize': fontSize,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }
}

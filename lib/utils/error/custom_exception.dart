class FirebaseException implements Exception {
  final String code;
  final String? message;

  FirebaseException({
    required this.code,
    this.message,
  });
}

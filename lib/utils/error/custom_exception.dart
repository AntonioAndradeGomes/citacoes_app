import 'package:equatable/equatable.dart';

class CustomException extends Equatable implements Exception {
  final String? code;
  final String title;
  final String? message;

  const CustomException({
    this.code,
    required this.title,
    this.message,
  });

  @override
  List<Object?> get props => [code, title, message];
}

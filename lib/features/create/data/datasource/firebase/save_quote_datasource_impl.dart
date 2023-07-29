import 'package:citacoes/constants/firebase/firebase_collection_name.dart';
import 'package:citacoes/features/create/data/datasource/save_quote_datasource.dart';
import 'package:citacoes/features/shared/models/quote_model.dart';
import 'package:citacoes/utils/error/custom_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/src/result.dart';

class SaveQuoteDatasourceImpl implements SaveQuoteDatasource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  SaveQuoteDatasourceImpl({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  CollectionReference get _quoteCollection => firebaseFirestore.collection(
        FirebaseCollectionName.citacao,
      );

  @override
  Future<Result<void, CustomException>> add({required QuoteModel model}) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Result<void, CustomException>> update({required QuoteModel model}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

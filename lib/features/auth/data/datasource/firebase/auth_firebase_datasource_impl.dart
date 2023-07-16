import 'dart:developer';
import 'package:citacoes/constants/firebase/firebase_collection_name.dart';
import 'package:citacoes/constants/firebase/user_firebase_field_name.dart';
import 'package:citacoes/features/auth/data/datasource/auth_datasourse.dart';
import 'package:citacoes/features/auth/data/models/auth_result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthFirebaseDatasourceImpl implements AuthDatasource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore firebaseFirestore;

  AuthFirebaseDatasourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
    required this.firebaseFirestore,
  });

  CollectionReference get _usersCollection => firebaseFirestore.collection(
        FirebaseCollectionName.citacao,
      );

  @override
  Stream<User?> authStateChanges() async* {
    yield* firebaseAuth.authStateChanges();
  }

  @override
  Future<AuthResult> signInGoogle() async {
    final signInAccount = await googleSignIn.signIn();
    if (signInAccount == null) {
      return AuthResult.aborted;
    }
    final googleAuth = await signInAccount.authentication;
    final oAuthCredentials = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      final result = await firebaseAuth.signInWithCredential(oAuthCredentials);
      final userId = result.user?.uid;

      final userDoc = await _usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        await _usersCollection.doc(userId).set({
          UserFirebaseFieldName.displayName: result.user?.displayName,
          UserFirebaseFieldName.email: result.user?.email,
          UserFirebaseFieldName.imageUrl: result.user?.photoURL,
          UserFirebaseFieldName.userId: userId,
        });
      }
      return AuthResult.success;
    } catch (e, s) {
      log(
        e.toString(),
        error: e,
        stackTrace: s,
        time: DateTime.now(),
      );

      return AuthResult.failure;
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }
}

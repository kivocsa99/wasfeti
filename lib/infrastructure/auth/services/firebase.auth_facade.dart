import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:fpdart/fpdart.dart";
import 'package:hive_flutter/adapters.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wasfeti/domain/models/usermodel.dart';

import '../../../domain/auth/contracts/i.auth.facade.dart';
import '../../../domain/auth/failures/auth.failures.dart';

class FirebaseAuthFacade implements IFirebaseAuthFacade {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  static const String inValidPassword = "wrong-password";
  static const String inValidEmail = "user-not-found";
  static const String inUse = "email-already-in-use";
  static const String servererror = "server-error";
  static const String collection = "users";
  late Box setting;

  String get currentUserId => _auth.currentUser!.uid;

  @override
  Stream<String> get currentUserUidStream =>
      _auth.authStateChanges().map((user) => user!.uid);
  @override
  Stream<UserModel> userStream(String uid) {
    final docRef = _firestore.collection(collection).doc(uid);
    final snapshots = docRef.snapshots();
    return snapshots.map((current) {
      print(current.data());
      return UserModel.fromJson(current.data()!);
    });
  }

  @override
  Stream<UserModel> get currentUserStream {
    return Rx.switchLatest(currentUserUidStream.map((uid) => userStream(uid)));
  }

  @override
  Future<Either<FirebaseAuthFailure, Unit>> signInWithEmailAndPassword({
    required String? email,
    required String? password,
  }) async {
    try {
      final login = await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);
      print(login.user?.uid);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inValidPassword:
          return left(const FirebaseAuthFailure.invalidPassword());
        case inValidEmail:
          return left(const FirebaseAuthFailure.invalidEmail());
        default:
          return left(const FirebaseAuthFailure.invalidEmail());
      }
    }
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  }
}

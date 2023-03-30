import 'package:fpdart/fpdart.dart';
import 'package:wasfeti/domain/models/usermodel.dart';
import '../failures/auth.failures.dart';

abstract class IFirebaseAuthFacade {
  Future<Either<FirebaseAuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Stream<UserModel> get currentUserStream;
  Stream<UserModel> userStream(String uid);
  Stream<String> get currentUserUidStream;
}

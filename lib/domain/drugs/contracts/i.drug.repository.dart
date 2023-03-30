import 'package:fpdart/fpdart.dart';
import 'package:wasfeti/domain/models/prescriptionmodel.dart';
import 'package:wasfeti/domain/models/usermodel.dart';
import '../../auth/failures/auth.failures.dart';

abstract class IDrugRepository {
  Future<Either<FirebaseAuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Stream<PrescriptionModel> get currentUserStream;
  Stream<UserModel> userStream(String uid);
  Stream<String> get currentUserUidStream;
}

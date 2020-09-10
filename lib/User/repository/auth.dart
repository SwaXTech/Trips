import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/firebase_auth_api.dart';

class Auth{
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();
  void signOut() => _firebaseAuthAPI.signOut();
}



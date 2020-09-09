import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/repository/auth.dart';

class UserBloc implements Bloc{

  final _auth_repository = Auth();

  //Casos de Uso

  // 1 - Sign In

  Future<UserCredential> signIn(){
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {

  }

}
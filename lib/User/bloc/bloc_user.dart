import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/User/repository/auth.dart';
import 'package:trips_app/User/repository/firestore.dart';

class UserBloc implements Bloc{

  final _auth_repository = Auth();

  Stream<User> stream = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => stream;


  //Casos de Uso

  // 1 - Sign In
  Future<UserCredential> signIn()=> _auth_repository.signInFirebase();

  // 2 - Sign Out
  void signOut()=> _auth_repository.signOut();

  // 3 - User Registering
  final _cloudFirestoreRepository = Firestore();
  void updateUserData(usr.User user) => _cloudFirestoreRepository.updateUserData(user);

  // 4 - Update place
  Future<void> updatePlaceData(Place place) async => _cloudFirestoreRepository.updatePlaceData(place);


  @override
  void dispose() {

  }

}
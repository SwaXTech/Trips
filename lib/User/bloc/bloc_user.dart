import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/Place/repository/firebase_storage.dart' as fstg;
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/User/repository/auth.dart';
import 'package:trips_app/User/repository/cloud_firestore_api.dart';
import 'package:trips_app/User/repository/firestore.dart' as fst;
import 'package:trips_app/User/ui/widgets/place_card.dart';

class UserBloc implements Bloc{

  final _auth_repository = Auth();

  Stream<User> stream = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => stream;
  User get currentUser => FirebaseAuth.instance.currentUser;

  //Casos de Uso

  // 1 - Sign In
  Future<UserCredential> signIn()=> _auth_repository.signInFirebase();

  // 2 - Sign Out
  void signOut()=> _auth_repository.signOut();

  // 3 - User Registering
  final _cloudFirestoreRepository = fst.Firestore();
  void updateUserData(usr.User user) => _cloudFirestoreRepository.updateUserData(user);
  Stream<QuerySnapshot> _placesListStream = FirebaseFirestore.instance.collection(CloudFirestoreAPI().PLACES).snapshots();
  Stream<QuerySnapshot> get placesStream => _placesListStream;
  List<PlaceCard> buildPlaces(List<DocumentSnapshot> places) => _cloudFirestoreRepository.buildPlaces(places);
  Stream<QuerySnapshot> myPlacesListStream(String uid) => _getPlacesCollection()
      .where('userOwner', isEqualTo: _thisUser(uid))
      .snapshots();

  DocumentReference _thisUser(String uid) => FirebaseFirestore.instance.doc('${CloudFirestoreAPI().USERS}/$uid');

  CollectionReference _getPlacesCollection() => FirebaseFirestore.instance.collection(CloudFirestoreAPI().PLACES);

  // 4 - Update place
  Future<void> updatePlaceData(Place place) async => _cloudFirestoreRepository.updatePlaceData(place);

  final _firebaseStorageRepository = fstg.FirebaseStorage();
  Future<StorageUploadTask> uploadFile(String path, File image) => _firebaseStorageRepository.uploadFile(path, image);




  @override
  void dispose() {

  }

}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/User/ui/widgets/place_card.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(usr.User user) async {
    DocumentReference reference = _db.collection(USERS).doc(user.uid);
    return await reference.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    });
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference placesReference = _db.collection(PLACES);
    final uid = _auth.currentUser.uid;
    await placesReference.add(_placeFields(place, uid)).then(
        (DocumentReference placeReference) =>
            _insertPlaceInUserReference(placeReference, uid));
  }

  void _insertPlaceInUserReference(
      DocumentReference placeReference, String uid) {
    placeReference.get().then((DocumentSnapshot snapshot) {
      DocumentReference userReference = _getUserReference(uid);
      _addArrayToUserPlaces(userReference, snapshot);
    });
  }

  void _addArrayToUserPlaces(
      DocumentReference userReference, DocumentSnapshot snapshot) {
    userReference.update({
      'myPlaces': FieldValue.arrayUnion([_db.doc('$PLACES/${snapshot.id}')])
    });
  }

  DocumentReference _getUserReference(String uid) =>
      _db.collection(USERS).doc(uid);

  Map<String, dynamic> _placeFields(Place place, String uid) {
    return {
      'name': place.name,
      'description': place.description,
      'likes': place.likes,
      'userOwner': _db.doc('$USERS/$uid'), //Referencia
      'imageURL': place.imageURL,
    };
  }

  List<PlaceCard> buildPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<PlaceCard> places = List();
    placesListSnapshot.forEach((place) => places.add(PlaceCard(_buildPlace(place))));
    return places;
  }

  Place _buildPlace(DocumentSnapshot element) {
    return Place(
        name: element.data()['name'],
        description: element.data()['description'],
        imageURL: element.data()['imageURL'],
        likes: element.data()['likes'],
        id: element.data()['id'],
      );
  }
}

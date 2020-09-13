import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/model/user.dart';
import 'package:trips_app/User/repository/cloud_firestore_api.dart';
import 'package:trips_app/User/ui/widgets/place_card.dart';

class Firestore{

  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserData(User user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);
  List<PlaceCard> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildPlaces(placesListSnapshot);

}
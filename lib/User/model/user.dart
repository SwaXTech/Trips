import 'package:flutter/material.dart';
import 'package:trips_app/Place/model/place.dart';

class User{

  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  User({Key key, this.uid, this.name, this.email, this.photoURL, this.myPlaces, this.myFavoritePlaces});
}
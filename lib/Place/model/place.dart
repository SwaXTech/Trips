import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Place{

  String id;
  String name;
  String description;
  String imageURL;
  int likes = 0;

  Place(
      {Key key,
      @required this.id,
      @required this.name,
      @required this.description,
      @required this.imageURL,
      @required this.likes});
}
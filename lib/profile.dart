import 'package:flutter/material.dart';
import 'package:trips_app/place_card.dart';
import 'package:trips_app/profile_info.dart';

import 'buttons_row.dart';
import 'gradient.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        GradientBack.withAlighment("Profile", screenHeight * 0.45, Alignment(-0.9, -0.8)),
        ProfileInfo("Pathum Tzoo", "pathumtzoo1@gmail.com", 'assets/img/a_person.jfif'),
        ButtonsRow(),
        Container(
          margin: EdgeInsets.only(top: 300),
          child: ListView(
            controller: ScrollController(
              initialScrollOffset: 80.0
            ),
            children: [
              PlaceCard("Knuckles Mountains Range", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "Steps 123,123,123", "assets/img/mountain.jpg"),
              PlaceCard("Knuckles Mountains Range", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "Steps 123,123,123", "assets/img/cave.jpg"),
              PlaceCard("Knuckles Mountains Range", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "Steps 123,123,123", "assets/img/lake.jpg"),
              PlaceCard("Knuckles Mountains Range", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "Steps 123,123,123", "assets/img/river.jpg"),
              PlaceCard("Knuckles Mountains Range", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "Steps 123,123,123", "assets/img/sea.jpg"),
            ],
          ),
        ),
      ],
    );
  }



}
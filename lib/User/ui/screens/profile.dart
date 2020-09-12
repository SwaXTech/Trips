import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/ui/screens/profile_info.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/model/place.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/User/ui/widgets/place_card.dart';

import '../widgets/buttons_row.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        GradientBack(
            title: "Profile",
            height: screenHeight * 0.45
        ),
        ProfileInfo(),
        ButtonsRow(),
        Container(
          margin: EdgeInsets.only(top: 300),
          child: ListView(
            controller: ScrollController(initialScrollOffset: 80.0),
            children: [
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/mountain.jpg",
                  likes: 6)),
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/cave.jpg",
                  likes: 6)),
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/lake.jpg",
                  likes: 6)),
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/river.jpg",
                  likes: 6)),
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/sea.jpg",
                  likes: 6)),
              PlaceCard(Place(
                  id: 'asd',
                  name: "Knuckles Mountains Range",
                  description:
                      "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy",
                  imageURL: "assets/img/mountain.jpg",
                  likes: 6)),
            ],
          ),
        ),
      ],
    );
  }
}
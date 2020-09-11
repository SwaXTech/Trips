import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/ui/screens/profile_info.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/model/place.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/User/ui/widgets/place_card.dart';

import '../widgets/buttons_row.dart';

class ProfileTrips extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        GradientBack.withAlighment("Profile", screenHeight * 0.45, Alignment(-0.9, -0.8)),
        ProfileInfo(),
        ButtonsRow(),
        Container(
          margin: EdgeInsets.only(top: 300),
          child: ListView(
            controller: ScrollController(
              initialScrollOffset: 80.0
            ),
            children: [
              PlaceCard(Place("Knuckles Mountains Range", "UnLugar", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "123,123,123"),"assets/img/mountain.jpg"),
              PlaceCard(Place("Knuckles Mountains Range", "UnLugar", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "123,123,123"),"assets/img/cave.jpg"),
              PlaceCard(Place("Knuckles Mountains Range", "UnLugar", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "123,123,123"),"assets/img/lake.jpg"),
              PlaceCard(Place("Knuckles Mountains Range", "UnLugar", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "123,123,123"),"assets/img/river.jpg"),
              PlaceCard(Place("Knuckles Mountains Range", "UnLugar", "Hiking, Water fall hunting, Natural bath, Scenery & Photograpy", "123,123,123"),"assets/img/sea.jpg"),

            ],
          ),
        ),
      ],
    );
  }



}
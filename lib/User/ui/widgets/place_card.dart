import 'package:flutter/material.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/widgets/floating_action_button_green.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/model/place.dart';

class PlaceCard extends StatelessWidget {


  Place place;
  String path;

  PlaceCard(this.place, this.path);


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                fit: BoxFit.cover, //Siempre al centro
                image: AssetImage(path)),
          ),
        ),
        Container(
          height: 120,
          width: 300,
          margin: EdgeInsets.only(top: 270),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0))
              ]),
          child: Stack(
            alignment: Alignment(0.9, 1.1),
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lato'
                      ),
                    ),
                    Spacer(),

                    Text(place.type,
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: 'Lato',
                      fontSize: 12.0,
                    ),
                    ),
                    Spacer(),
                    Text("Steps ${place.steps}",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    ),),

                  ],
                ),
                margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              ),
              FloatingActionButtonGreen(),
            ],
          ),
        ),
      ],
    );
  }
}

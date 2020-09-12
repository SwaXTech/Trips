import 'package:flutter/material.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/widgets/floating_action_button_green.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/model/place.dart';

class PlaceCard extends StatelessWidget {
  Place place;

  PlaceCard(this.place);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        buildImage(),
        buildImageInfo(),
      ],
    );
  }

  Container buildImageInfo() {
    return Container(
      height: 120,
      width: 300,
      margin: EdgeInsets.only(top: 270),
      decoration: infoBoxDecoration(),
      child: Stack(
        alignment: Alignment(0.9, 1.1),
        children: [
          buildInfoContent(),
          FloatingActionButtonGreen(
            iconData: Icons.favorite_border,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Container buildInfoContent() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          Spacer(),
          buildDescription(),
          Spacer(),
          buildLikes(),
        ],
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
    );
  }

  Text buildLikes() {
    return Text(
      "${place.likes == null ? '0' : place.likes} Likes",
      style: TextStyle(
          color: Colors.amber, fontSize: 14.0, fontWeight: FontWeight.bold),
    );
  }

  Text buildDescription() {
    return Text(
      place.description,
      style: TextStyle(
        color: Colors.black26,
        fontFamily: 'Lato',
        fontSize: 12.0,
      ),
    );
  }

  Text buildTitle() {
    return Text(
      place.name,
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.w900, fontFamily: 'Lato'),
    );
  }

  BoxDecoration infoBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(22)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38, blurRadius: 15.0, offset: Offset(0.0, 7.0))
        ]);
  }

  Container buildImage() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        shape: BoxShape.rectangle,
        image: DecorationImage(
            fit: BoxFit.cover, //Siempre al centro
            image: AssetImage(place.imageURL)),
      ),
    );
  }
}

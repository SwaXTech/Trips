import 'package:flutter/material.dart';
import 'stars.dart';
import 'purple_button.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            color: Color(0xFF56575a),
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
      ),
    );

    final star_empty = getStar(Icons.star_border);
    final star_half = getStar(Icons.star_half);
    final star = getStar(Icons.star);

    final titleStars = Row(

      children: [

        Container(

          margin: EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right: 20.0
          ),

          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
              textAlign: TextAlign.left,
          ),

        ),

        Row(
          children: [
            star,
            star,
            star,
            star_half,
            star_empty,

          ],
        )

      ],

    );

    final titleAndDesc = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        PurpleButton("Navigate")
      ],
    );

    return titleAndDesc;
  }

}
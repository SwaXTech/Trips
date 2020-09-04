import 'package:flutter/material.dart';
import 'stars.dart';


class Review extends StatelessWidget{

  String pathImage = "assets/img/a_person.jfif";
  String name = "Varuna Yasas";
  String details = "Wjskndkasjdhkasjdhaskjdhaskjdh";
  int photosCount = 5;
  int reviewCount = 1;
  Review(this.pathImage);

  final star_empty = getStar(Icons.star_border);
  final star_half = getStar(Icons.star_half);
  final star = getStar(Icons.star);

  @override
  Widget build(BuildContext context) {
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
      child: Row(
        children: [
          Text("$reviewCount reviews . $photosCount photos"),
          Row(
            children: [
              star,
              star,
              star,
              star,
              star,
            ],
          )
        ],
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
          fontSize: 13.0
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            fontSize: 16.0
        ),
      )
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinear al inicio
      children: [
        userName,
        userInfo,
        userComment
      ],

    );


    final photo = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left:20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover, //Siempre al centro
          image: AssetImage(pathImage)
        ),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }

}

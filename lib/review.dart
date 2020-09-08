import 'package:flutter/material.dart';
import 'circular_photo.dart';
import 'stars.dart';


class Review extends StatelessWidget{

  String pathImage = "assets/img/a_person.jfif";
  String name = "Varuna Yasas";
  String comment = "asdasdasdasdasdasdasdas";
  int photosCount = 5;
  int reviewCount = 1;
  Review(this.name, this.comment, this.photosCount, this.reviewCount);

  final star_empty = getStar(Icons.star_border);
  final star_half = getStar(Icons.star_half);
  final star = getStar(Icons.star);

  @override
  Widget build(BuildContext context) {


    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Text("$reviewCount reviews - $photosCount photos",
            style: TextStyle(
                fontSize: 12.0,
                fontFamily: "Lato"
            ),
          ),

        ],
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        comment,
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
            fontSize: 17.0
        ),
      )
    );


    final userDetails = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinear al inicio
        children: [
          userName,
          userInfo,
          userComment
        ],

      ),
    );


    final photo = CircularPhoto(80, pathImage, 20);

    return Row(
      children: [photo, userDetails],
    );
  }

}

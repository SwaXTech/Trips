import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final description =Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing"
          " elit. Curabitur blandit eu lectus vitae auctor. Nunc rhoncus, leo nec "
          "malesuada consectetur, lorem est convallis orci, non pulvinar felis "
          "magna vitae arcu. Nulla suscipit consequat lectus, eu efficitur ante "
          "egestas nec. Morbi ipsum erat, tempor vel est eget, blandit blandit sem",

        style: const TextStyle(
            color: Color(0xFF56575a),
            fontSize: 16.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );



    final star = Container(
      margin: EdgeInsets.only(
        top:323.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final titleStars = Row(

      children: [

        Container(

          margin: EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right: 20.0
          ),

          child: Text(
            "Duwili Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
              textAlign: TextAlign.left,
          ),

        ),

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

    );

    final titleAndDesc = Column(
      children: [
        titleStars,
        description

      ],
    );

    return titleAndDesc;
  }

}
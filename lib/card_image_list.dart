import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/cave.jpg"),
          CardImage("assets/img/lake.jpg"),
          CardImage("assets/img/mountain.jpg"),
          CardImage("assets/img/river.jpg"),
          CardImage("assets/img/sea.jpg"),
        ],
      ),
    );

  }

}
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
          CardImage(pathImage: "assets/img/cave.jpg", iconData: Icons.favorite_border, height: 250, width: 350, marginLeft: 20,),
          CardImage(pathImage: "assets/img/lake.jpg", iconData: Icons.favorite_border, height: 250, width: 350, marginLeft: 20),
          CardImage(pathImage: "assets/img/mountain.jpg", iconData: Icons.favorite_border, height: 250, width: 350, marginLeft: 20),
          CardImage(pathImage: "assets/img/river.jpg", iconData: Icons.favorite_border, height: 250, width: 350, marginLeft: 20),
          CardImage(pathImage: "assets/img/sea.jpg", iconData: Icons.favorite_border, height: 250, width: 350, marginLeft: 20),
        ],
      ),
    );

  }

}
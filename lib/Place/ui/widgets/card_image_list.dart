import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  double _width = 300.0;
  double _height = 250.0;
  double marginLeft = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(imageProvider: AssetImage("assets/img/cave.jpg"),     iconData: Icons.favorite_border, height: _height, width: _width, marginLeft: marginLeft),
          CardImage(imageProvider: AssetImage("assets/img/lake.jpg"),     iconData: Icons.favorite_border, height: _height, width: _width, marginLeft: marginLeft),
          CardImage(imageProvider: AssetImage("assets/img/mountain.jpg"), iconData: Icons.favorite_border, height: _height, width: _width, marginLeft: marginLeft),
          CardImage(imageProvider: AssetImage("assets/img/river.jpg"),    iconData: Icons.favorite_border, height: _height, width: _width, marginLeft: marginLeft),
          CardImage(imageProvider: AssetImage("assets/img/sea.jpg"),      iconData: Icons.favorite_border, height: _height, width: _width, marginLeft: marginLeft),
        ],
      ),
    );

  }

}
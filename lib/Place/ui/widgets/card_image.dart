import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trips_app/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  final ImageProvider imageProvider;
  final double height;
  final double width;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;
  double marginLeft = 20.0;

  CardImage(
      {Key key,
      @required this.imageProvider,
      @required this.height,
      @required this.width,
      this.marginLeft,
      @required this.onPressedFabIcon,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [card(), FloatingActionButtonGreen(iconData: iconData, onPressed: onPressedFabIcon)],
    );
  }

  Container card() => Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(left: marginLeft),
        decoration: cardDecoration(),
      );

  BoxDecoration cardDecoration() => BoxDecoration(
      image: decorationImage(),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      shape: BoxShape.rectangle,
      boxShadow: shadow());

  List<BoxShadow> shadow() => <BoxShadow>[
        BoxShadow(
            color: Colors.black38, blurRadius: 15.0, offset: Offset(0.0, 7.0))
      ];

  DecorationImage decorationImage() =>
      DecorationImage(fit: BoxFit.cover, image: imageProvider);
}

import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient.dart';
import '../widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: [
        GradientBack("Bienvenido", 250.0),
        CardImageList(),
      ],

    );
  }



}
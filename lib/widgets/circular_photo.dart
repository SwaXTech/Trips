import 'package:flutter/material.dart';

class CircularPhoto extends StatelessWidget{

  double size;
  ImageProvider imageProvider;
  double margin;

  CircularPhoto(this.size, this.imageProvider, this.margin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top:margin,
          left:margin
      ),

      width: size,
      height: size,

      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3.0
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover, //Siempre al centro
            image: imageProvider
        ),
      ),
    );
  }


}
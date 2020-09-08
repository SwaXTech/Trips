import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  String title = "Popular";
  double height = 250;
  var alignment = Alignment(-0.9, -0.6);

  GradientBack.withAlighment(this.title, this.height, this.alignment);
  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {

    return Container(

      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3), // Del más claro
            Color(0xFF584CD1) // Al más oscuro
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),

      alignment: alignment,

    );
  }



}
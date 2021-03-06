import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final title;
  double height = 250;

  GradientBack({Key key, this.title, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (height == null) height = screenHeight;

    return Stack(children: [
      Container(
        width: screenWidth,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF4268D3), // Del más claro
                  Color(0xFF584CD1) // Al más oscuro
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),

        child: FittedBox(
          fit: BoxFit.none,
          alignment: Alignment(-1.5, -0.8),
          child: Container(
            height: screenHeight,
            width: screenHeight,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              borderRadius: BorderRadius.circular(screenHeight / 2),
            ),
          ),
        ),

        //alignment: alignment,
      ),
      Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ]);
  }
}

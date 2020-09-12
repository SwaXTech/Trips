import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'package:trips_app/widgets/title_header.dart';

class AddPlace extends StatefulWidget {

  final image;
  AddPlace({Key key, this.image});

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          GradientBack(height: 300),
          Row(
            children: [
              backArrow(context),
              title(),
            ],
          )
        ],
      ),

    );
  }

  Flexible title() {
    return Flexible(
      child: Container(
        padding: EdgeInsets.only(top: 35, left: 20, right: 10),
        child: TitleHeader(title: "Add new place"),
      ),
    );
  }

  Container backArrow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0, left: 5.0),
      child: SizedBox(
        //Para que todo el área del boton sirva para clickear
        height: 45,
        width: 45,
        child: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

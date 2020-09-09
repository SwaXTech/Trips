import 'package:flutter/material.dart';

Widget getStar(IconData icon){

  return Container(
    margin: EdgeInsets.only(
      top:323.0,
      right: 3.0,
    ),

    child: Icon(
      icon,
      color: Color(0xFFF2C611),
    ),
  );

}
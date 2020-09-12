import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  final String title;

  TitleHeader({Key key, @required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Text(
      title,
      style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold),
    );
  }
}

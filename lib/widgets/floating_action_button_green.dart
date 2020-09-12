import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen(
      {Key key, @required this.iconData, @required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  IconData actualIcon = Icons.favorite_border;

  void onPressedFav(){

    setState(() {
      if(actualIcon == Icons.favorite_border)
        actualIcon = Icons.favorite;
      else
        actualIcon = Icons.favorite_border;
    });

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Fav"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: Icon(
        actualIcon
      ),
    heroTag: null,
    );

  }

}
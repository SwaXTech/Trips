import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget{

  final VoidCallback onPressed;
  bool mini;
  var icon;
  var color;
  var iconColor = Colors.white;

  CircleButton(this.onPressed, this.mini, this.icon, this.color);
  CircleButton.withAnotherIconColor(this.onPressed, this.mini, this.icon, this.color, this.iconColor);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }

}

class _CircleButton extends State<CircleButton> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.mini,
        onPressed: widget.onPressed,
        child: Icon(
          widget.icon,
          color: widget.iconColor,
        ),
      ),
    );
  }
}
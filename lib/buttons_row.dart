import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FloatingActionButton(
            backgroundColor: Colors.white38,
            mini: true,
            child: Icon(Icons.bookmark_border),
          ),
          Spacer(),
          FloatingActionButton(
            backgroundColor: Colors.white38,
            mini: true,
            child: Icon(Icons.notifications_active),
          ),
          Spacer(),
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.add, color: Colors.blue,),
          ),
          Spacer(),
          FloatingActionButton(
            backgroundColor: Colors.white38,
            mini: true,
            child: Icon(Icons.email),
          ),
          Spacer(),
          FloatingActionButton(
            backgroundColor: Colors.white38,
            mini: true,
            child: Icon(Icons.person),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

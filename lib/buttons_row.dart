import 'package:flutter/material.dart';

import 'circle_button.dart';

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 210),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleButton(true, Icons.turned_in_not, Colors.white38),
          CircleButton(true, Icons.card_travel, Colors.white38),
          CircleButton.withAnotherIconColor(false, Icons.add, Colors.white, Color(0xFF4268D3)),
          CircleButton(true, Icons.mail, Colors.white38),
          CircleButton(true, Icons.person, Colors.white38)
        ],
      ),
    );
  }
}

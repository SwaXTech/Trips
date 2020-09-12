import 'package:flutter/material.dart';

class LocationField extends StatelessWidget {

  final String hintText;
  final TextEditingController textEditingController;
  final IconData iconData;


  LocationField(
      {Key key,
      @required this.hintText,
      @required this.textEditingController,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: textField(),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0, //Expansión de la sombra
            offset: Offset(0.0, 7.0), // En x no se mueve, pero en Y arranca más abajo
          )
        ]
      ),
    );
  }

  TextField textField() {
    return TextField(
      controller: textEditingController,
      style: textStyle(),
      decoration: inputDecoration(),
    );
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: Icon(iconData), // Al final
      fillColor: Color(0xFFFFFFFF),
      filled: true,
      border: InputBorder.none,
      enabledBorder: border(),
      focusedBorder: border(),

    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFFFFFFF),
      ),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    );
  }

  TextStyle textStyle() {
    return TextStyle(
      fontSize: 15,
      fontFamily: 'Lato',
      color: Colors.blueGrey,
      fontWeight: FontWeight.bold,
    );
  }

}

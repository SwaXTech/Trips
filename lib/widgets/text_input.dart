import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  int maxLines = 1;

  TextInput(
      {Key key,
      @required this.hintText,
      @required this.textInputType,
      @required this.textEditingController,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: textField(),
    );
  }

  TextField textField() {
    return TextField(
      controller: textEditingController,
      keyboardType: textInputType,
      maxLines: maxLines,
      decoration: inputDecoration(),
      style: textStyle(),
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

  InputDecoration inputDecoration() {
    return InputDecoration(
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        border: InputBorder.none,
        hintText: hintText,
        enabledBorder: border(),
        focusedBorder: border());
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFe5e5e5),
        ),
        borderRadius: BorderRadius.all(Radius.circular(9.0)),
      );
  }
}

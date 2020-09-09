import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient.dart';

class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }

}

class _SignIn extends State<SignIn>{

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", MediaQuery.of(context).size.height),
          Column(
            children: [
              Text("Welcome \n This is your Travel App",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: 'Lato',
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ],

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

}
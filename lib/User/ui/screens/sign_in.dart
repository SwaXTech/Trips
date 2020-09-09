import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'package:trips_app/widgets/green_button.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome \nThis is your Travel App",
              style: TextStyle(
                fontSize: 37.0,
                fontFamily: 'Lato',
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
              GreenButton(
                text: "Login With GMail",
                onPressed: (){},
                width: 300.0,
                height: 50.0,
              ),

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
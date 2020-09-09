import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'package:trips_app/widgets/green_button.dart';

import '../../../trips.dart';

class SignIn extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }

}

class _SignIn extends State<SignIn>{

  UserBloc user;

  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: user.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        }

        return Trips();
      },
    );
  }

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
                onPressed: (){                                // Only testing purposes
                  user.signIn().then((UserCredential user) => print("El Usuario es ${user.user.displayName}"));
                },
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

    user = BlocProvider.of(context);

    return _handleCurrentSession();
  }

}
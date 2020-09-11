import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/model/user.dart' as usr;
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

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(
            height: null,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  width: screenWidth(),
                  child: welcomeText(),
                ),
              ),
              loginButton()
            ],
          ),
        ],
      ),
    );
  }

  double screenWidth() => MediaQuery.of(context).size.width;

  Widget welcomeText() => Container(
    margin: EdgeInsets.only(left: 20.0),
    child: Text(
          "Welcome \nThis is your Travel App",
          style: TextStyle(
              fontSize: 37.0,
              fontFamily: 'Lato',
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
  );


  Widget loginButton() => GreenButton(
        text: "Login With GMail",
        onPressed: () {
          user.signIn().then(
              (UserCredential userCredential) => user.updateUserData(usr.User(
                    uid: userCredential.user.uid,
                    email: userCredential.user.email,
                    name: userCredential.user.displayName,
                    photoURL: userCredential.user.photoURL,
                  )));
        },
        width: 300.0,
        height: 50.0,
      );

  @override
  Widget build(BuildContext context) {

    user = BlocProvider.of(context);

    return _handleCurrentSession();
  }

}
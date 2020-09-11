import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/widgets/circular_photo.dart';

class ProfileInfo extends StatelessWidget {

  usr.User user;
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(), //TODO: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        print(snapshot.data);
        print(snapshot.connectionState);
        print(snapshot.hasError);
        print(snapshot.hasData);
        switch(snapshot.connectionState){
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
        }
        return null;
      },
    );

  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError)
      return notLogged(snapshot);
    return logged(snapshot);
  }

  Widget notLogged(AsyncSnapshot snapshot){
    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: [
          CircularProgressIndicator(),
          Text("No se pudo cargar la información"),
        ],
      ),
    );
  }

  Widget logged(AsyncSnapshot snapshot){
    user = usr.User(name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoUrl);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularPhoto(90.0, user.photoURL, 20),
          makeInfo(),
        ],
      ),
    );
  }

  Widget makeEmail(){
   return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        user.email,
        style: TextStyle(
            color: Colors.white30,
            fontSize: 16.0,
            fontFamily: 'Lato'
        ),
      ),
    );
  }

  Widget makeName(){
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        user.name,
        style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontFamily: 'Lato'
        ),
      ),
    );
  }

  Widget makeInfo(){
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          makeName(),
          makeEmail(),
        ],
      ),
    );
  }
}
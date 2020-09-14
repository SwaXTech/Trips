import 'package:flutter/material.dart';
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/widgets/circular_photo.dart';

class ProfileInfo extends StatelessWidget {

  final usr.User user;
  ProfileInfo({@required this.user});

  @override
  Widget build(BuildContext context) {
    return showProfileData();
  }

  Widget showProfileData(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularPhoto(90.0, NetworkImage(user.photoURL), 20),
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
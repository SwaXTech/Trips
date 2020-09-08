import 'package:flutter/material.dart';
import 'package:trips_app/circular_photo.dart';

class ProfileInfo extends StatelessWidget {

  String name;
  String email;
  String path;

  ProfileInfo(this.name, this.email, this.path);


  @override
  Widget build(BuildContext context) {
    final name_txt = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: 'Lato'
        ),
      ),
    );

    final email_txt = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        email,
        style: TextStyle(
            color: Colors.white24,
            fontSize: 15.0,
            fontFamily: 'Lato'
        ),
      ),
    );

    final info = Container(
      margin: EdgeInsets.only(top: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          name_txt,
          email_txt
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 120.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularPhoto(90.0, path, 20),
          info,
        ],
      ),
    );
  }

}
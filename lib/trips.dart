import 'package:flutter/material.dart';
import 'package:trips_app/home_trip.dart';
import 'package:trips_app/profile.dart';
import 'package:trips_app/search.dart';

class Trips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }

}

class _Trips extends State<Trips>{

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
              ),
            ]
        )
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/ui/screens/home_trip.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/User/ui/screens/profile.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/ui/screens/search.dart';

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
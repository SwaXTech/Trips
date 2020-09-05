import 'package:flutter/material.dart';
import 'package:trips_app/trips.dart';
import 'package:trips_app/trips_cupertino.dart';
import 'description_places.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trips App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Trips(),
    );
  }
}


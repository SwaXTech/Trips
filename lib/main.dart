import 'package:flutter/material.dart';
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
      home: Scaffold(
        //body: new DescriptionPlace(Proin interdum tincidunt justo, non aliquam orci bibendum a. Sed placerat varius mollis. Duis sed iaculis tellus, et volutpat enim. Suspendisse placerat odio sem, vitae efficitur orci tincidunt sed."),
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("Bahamas", 4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit eu lectus vitae auctor. Nunc rhoncus, leo nec malesuada consectetur, lorem est convallis orci, non pulvinar felis magna vitae arcu. Nulla suscipit consequat lectus, eu efficitur ante egestas nec. Morbi ipsum erat, tempor vel est eget, blandit blandit sem. Duis pharetra nunc dui, at finibus augue porttitor sit amet. Curabitur nec ultrices metus. Curabitur id lorem vestibulum, posuere justo in, sagittis sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. "),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        )
      ),
    );
  }
}


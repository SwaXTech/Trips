import 'package:flutter/material.dart';
import 'file:///C:/Users/AleeHerasimiuk/AndroidStudioProjects/trips_app/lib/Place/ui/widgets/review_list.dart';

import '../widgets/description_places.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit eu lectus vitae auctor. Nunc rhoncus, leo nec malesuada consectetur, lorem est convallis orci, non pulvinar felis magna vitae arcu. Nulla suscipit consequat lectus, eu efficitur ante egestas nec. Morbi ipsum erat, tempor vel est eget, blandit blandit sem. Duis pharetra nunc dui, at finibus augue porttitor sit amet. Curabitur nec ultrices metus. Curabitur id lorem vestibulum, posuere justo in, sagittis sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. "),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}
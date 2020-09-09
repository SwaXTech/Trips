import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Review("Roberto Perez", "Un excelente lugar", 5 , 1),
        Review("Pedro Gomez", "Muy limpio", 6 , 2),
        Review("Ramiro Ramirez", "Tremendo", 4 , 750),

      ],
    );
  }


}
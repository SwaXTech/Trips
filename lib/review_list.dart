import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Review("Roberto Perez", "Sdjakjlsdhaskljdaslkd", 5 , 1),
        Review("Pedro Gomez", "Sdjakjlsdhaskljdaslkd", 6 , 2),
        Review("Ramiro Ramirez", "Sdjakjlsdhaskljdaslkd", 4 , 750),

      ],
    );
  }


}
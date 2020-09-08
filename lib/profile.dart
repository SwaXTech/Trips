import 'package:flutter/material.dart';

import 'gradient.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Perfil", 460.0)
      ],
    );
  }



}
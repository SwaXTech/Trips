import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient.dart';

class AddPlace extends StatefulWidget {

  final image;
  AddPlace({Key key, this.image});

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          GradientBack(height: 300),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox( //Para que todo el área del boton sirva para clickear
                  height: 45,
                  width: 45,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),

            ],
          )
        ],
      ),

    );
  }
}

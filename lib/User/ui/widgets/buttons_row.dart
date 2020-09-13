import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trips_app/Place/ui/screens/add_place.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';

import 'circle_button.dart';

class ButtonsRow extends StatelessWidget {
  UserBloc user;

  @override
  Widget build(BuildContext context) {
    user = BlocProvider.of(context);

    return Container(
      margin: EdgeInsets.only(top: 210),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //CircleButton(true, Icons.turned_in_not, Colors.white38),
          keyButton(),
          addPlaceButton(context),
          logOutButton(),
          //CircleButton(true, Icons.person, Colors.white38)
        ],
      ),
    );
  }

  CircleButton logOutButton() => CircleButton(
      () => {user.signOut()}, true, Icons.exit_to_app, Colors.white38);

  CircleButton addPlaceButton(BuildContext context) {
    return CircleButton.withAnotherIconColor(
        selectImage(context), false, Icons.add, Colors.white, Color(0xFF4268D3));
  }

  CircleButton keyButton() =>
      CircleButton(() => {}, true, Icons.vpn_key, Colors.white38);

  VoidCallback selectImage(var context) {
    return () {
      ImagePicker.pickImage(source: ImageSource.camera)
          .then((image) => goAddPlace(context, image))
          .catchError((onError) => print(onError));
    };
  }

  void goAddPlace(BuildContext context, File image) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => AddPlace(image: image)));
  }
}

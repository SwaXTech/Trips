import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/Place/ui/widgets/card_image.dart';
import 'package:trips_app/Place/ui/widgets/location_field.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/widgets/gradient.dart';
import 'package:trips_app/widgets/purple_button.dart';
import 'package:trips_app/widgets/text_input.dart';
import 'package:trips_app/widgets/title_header.dart';

class AddPlace extends StatefulWidget {
  final image;

  AddPlace({Key key, this.image});

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  var _titleController = TextEditingController();
  var _descController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    _titleController = TextEditingController();
    _descController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: 300),
          appBar(context),
          Container(
            margin: EdgeInsets.only(top: 100.0, bottom: 20),
            child: buildListView(_titleController, _descController),
          ),
        ],
      ),
    );
  }

  ListView buildListView(var _titleController, var _descController) => ListView(
        children: [
          card(),
          titleTextField(_titleController),
          descriptionTextField(_descController),
          locationField(),
          addPlaceButton(),
        ],
      );

  Container addPlaceButton() {

    UserBloc userBloc = BlocProvider.of(context);
    return Container(
        width: 70.0,
        child: PurpleButton(
          buttonText: 'Add Place',
          onPressed: () {
            userBloc.updatePlaceData(Place(
              name: _titleController.text,
              description: _descController.text,
              likes: 0,
            )).whenComplete(() {
              print("TERMINO de subir PLACE");
              Navigator.pop(context);
            });
          },
        ),
      );
  }

  Container card() {
    return Container(
          alignment: Alignment.center,
          child: CardImage(
            imageProvider: FileImage(File(widget.image.path)), iconData: Icons.camera_alt, height: 250.0, width: 350.0, marginLeft: 0.0,
          ),
        );
  }

  Container locationField() => Container(
          margin: EdgeInsets.only(top: 20.0),
          child: LocationField(hintText: "Add location", iconData: Icons.location_on),
        );

  Container descriptionTextField(TextEditingController _descController) =>
      Container(
        child: TextInput(
          hintText: "Description",
          textInputType: TextInputType.multiline,
          maxLines: 4,
          textEditingController: _descController,
        ),
      );

  Container titleTextField(TextEditingController _titleController) => Container(
        margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
        child: TextInput(
          hintText: "Title",
          textInputType: null,
          maxLines: 1,
          textEditingController: _titleController,
        ),
      );

  Row appBar(BuildContext context) => Row(
        children: [
          backArrow(context),
          title(),
        ],
      );

  Flexible title() => Flexible(
        child: Container(
          padding: EdgeInsets.only(top: 35, left: 20, right: 10),
          child: TitleHeader(title: "Add new place"),
        ),
      );

  Container backArrow(BuildContext context) => Container(
        padding: EdgeInsets.only(top: 25.0, left: 5.0),
        child: SizedBox(
          //Para que todo el área del boton sirva para clickear
          height: 45,
          width: 45,
          child: IconButton(
            icon:
                Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
}

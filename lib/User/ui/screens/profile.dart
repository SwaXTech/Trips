import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/ui/screens/profile_info.dart';
import 'package:trips_app/User/ui/widgets/place_card.dart';
import 'package:trips_app/widgets/gradient.dart';

import '../widgets/buttons_row.dart';

class ProfileTrips extends StatelessWidget {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    userBloc = BlocProvider.of(context);

    return Stack(
      children: [
        GradientBack(
            title: "Profile",
            height: screenHeight * 0.45
        ),
        ProfileInfo(),
        ButtonsRow(),
        Container(
          margin: EdgeInsets.only(top: 300),
          child: StreamBuilder(
              stream: userBloc.placesStream,
              builder: (context, AsyncSnapshot snapshot){
                switch(snapshot.connectionState){
                  case ConnectionState.waiting:
                    return CircularProgressIndicator();
                  case ConnectionState.done:
                    return _buildList(snapshot);
                  case ConnectionState.active:
                    return _buildList(snapshot);
                  case ConnectionState.none:
                    return CircularProgressIndicator();
                  default:
                    return CircularProgressIndicator();
                }
              }),
        ),
      ],
    );
  }

  Widget _buildList(AsyncSnapshot snapshot)=> ListView(
      children: _getPlaces(snapshot),
    );

  List<PlaceCard> _getPlaces(AsyncSnapshot snapshot) => userBloc.buildPlaces(_getDocuments(snapshot));

  _getDocuments(AsyncSnapshot snapshot) => snapshot.data.documents;
}

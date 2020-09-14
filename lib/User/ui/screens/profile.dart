import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/model/user.dart' as usr;
import 'package:trips_app/User/ui/screens/profile_info.dart';
import 'package:trips_app/User/ui/widgets/place_card.dart';
import 'package:trips_app/widgets/gradient.dart';

import '../widgets/buttons_row.dart';

class ProfileTrips extends StatelessWidget {

  UserBloc userBloc;
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    screenHeight = MediaQuery.of(context).size.height;
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
        case ConnectionState.done:
          return showProfileData(snapshot);
        case ConnectionState.active:
          return showProfileData(snapshot);
        default:
          return CircularProgressIndicator();
        }
      },
    );
  }

  Stack showProfileData(snapshot){
    if (!snapshot.hasData || snapshot.hasError)
      return Stack(
        children: [Text("User not logged")],
      );

    var user = usr.User(
        uid: snapshot.data.uid,
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoUrl);

    return Stack(
      children: [
        GradientBack(
            title: "Profile",
            height: screenHeight * 0.45
        ),
        ProfileInfo(user: user),
        ButtonsRow(),
        _fetchAndBuildList(user),
      ],
    );
  }

  Container _fetchAndBuildList(usr.User user) {
    return Container(
        margin: EdgeInsets.only(top: 300),
        child: StreamBuilder(
            stream: userBloc.myPlacesListStream(user.uid),
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
      );
  }

  Widget _buildList(AsyncSnapshot snapshot)=> ListView(
      children: _getPlaces(snapshot),
    );

  List<PlaceCard> _getPlaces(AsyncSnapshot snapshot) => userBloc.buildPlaces(_getDocuments(snapshot));

  _getDocuments(AsyncSnapshot snapshot) => snapshot.data.documents;
}

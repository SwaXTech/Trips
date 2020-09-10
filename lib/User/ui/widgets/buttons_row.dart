import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
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
          CircleButton(() => {}, true, Icons.vpn_key, Colors.white38),
          CircleButton.withAnotherIconColor(() => {}, false, Icons.add, Colors.white, Color(0xFF4268D3)),
          CircleButton(() => {user.signOut()}, true, Icons.exit_to_app, Colors.white38),
          //CircleButton(true, Icons.person, Colors.white38)
        ],
      ),
    );
  }
}

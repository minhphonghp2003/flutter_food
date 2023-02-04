import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';

import 'CustomFloatingButton.dart';

class OauthLogin extends StatelessWidget {
  String name;
  Widget icon;
  String oauthBy;

  OauthLogin({Key? key, required this.oauthBy, required this.name, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 15.38, 0),
      // padding: EdgeInsets.fromLTRB(12, 13, 36, 12.38),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(27.4059333801),
        boxShadow: [
          BoxShadow(
            color: Color(0x3fd3d1d8),
            offset: Offset(17.8734359741, 17.8734359741),
            blurRadius: 17.8734359741,
          ),
        ],
      ),
      child: CustomActionFloatingButton(
        icon: icon,
        textColor: Colors.black,
        backgroundColor: Colors.white,
        text: name,
        onPressed: () {
          context.read<AuthBloc>().add(AuthLoggedIn(username: "", password: "", oauth: oauthBy));
        },
      ),
    );
  }
}

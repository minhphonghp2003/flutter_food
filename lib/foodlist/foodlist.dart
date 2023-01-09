import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';

import '../authenticate/presentation/WelcomePage.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storage = new FlutterSecureStorage();
    return BlocProvider(
      create: (BuildContext context) =>
          AuthBloc()..add(AuthLoginCookieChecked()),
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("FoodList"),
            BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              print(state);
              if (state is AuthStateLogInSuccess) {
                context.read<AuthBloc>().add(
                    AuthProfileFetched(token: state.authCredentials["token"]));
              }
              if (state is AuthStateProfileFetchedSuccess) {
                return Text(
                  'Profile\n${state.profile.toString()}\n',
                  style: TextStyle(
                    // fontSize: 36.4127006531,
                    fontWeight: FontWeight.w600,
                    height: 1.2000000838,
                    color: Colors.redAccent,
                  ),
                );
              }

              return Text("");
            }),
            TextButton.icon(
                onPressed: () {
                  storage.delete(key: "login_cookie");
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                      (Route<dynamic> route) => false);
                },
                icon: Icon(Icons.route),
                label: Text("Logout")),
          ],
        )),
      ),
    );
  }
}

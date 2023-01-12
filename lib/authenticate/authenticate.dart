import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/presentation/WelcomePage.dart';
import 'package:food/foodlist/food.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthStateLogInSuccess) {
        context.read<AuthBloc>().add(AuthProfileFetched(token: state.authCredentials["token"]));
      }
      if (state is AuthStateProfileFetchedSuccess) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => FoodList(
                      userProfile: state.profile,
                    )),
            (Route<dynamic> route) => false);
      }
    }, builder: (context, state) {
      return WelcomePage();
    });
  }
}

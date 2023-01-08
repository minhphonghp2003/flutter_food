import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/authenticate.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/foodlist/foodlist.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
            providers: [
          BlocProvider(
            create: (BuildContext context) =>
                AuthBloc()..add(AuthLoginCookieChecked()),
          ),
        ],
            child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              if (state is AuthStateLoginFailure) {
                return Authentication();
              }
              return FoodList();
            })));
  }
}

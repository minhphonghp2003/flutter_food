import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:food/authenticate/repository.dart';

class AuthBloc extends Bloc<Auth, AuthState> {
  final _storage = new FlutterSecureStorage();
  final UserRepository userRepository = new UserRepository();
  AuthBloc() : super(AuthStateInitial()) {
    on<AuthLoggedIn>(_authLoggedIn);
    on<AuthLoginCookieChecked>(_authJwtChecked);
    on<AuthRegistered>(_authRegistered);
    on<AuthProfileFetched>(_authProfileFetched);
  }

  void _authLoggedIn(AuthLoggedIn event, emit) async {
    Map<dynamic, dynamic> response =
        await userRepository.login(event.username, event.password);
    if (response.containsKey("error")) {
      emit(AuthStateLoginFailure(message: "No valid account"));
    } else {
      emit(AuthStateLogInSuccess(authCredentials: response));
    }
  }

  void _authJwtChecked(event, emit) async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    if (login_cookie == null) {
      emit(AuthStateLoginFailure(message: "No jwt"));
    } else {
      Map<dynamic, dynamic> decoded_login_cookie = jsonDecode(login_cookie);
      add(AuthProfileFetched(token: decoded_login_cookie["token"]));
      emit(AuthStateLogInSuccess(authCredentials: decoded_login_cookie));
    }
  }

  void _authRegistered(event, emit) {
    print(event);
  }

  void _authProfileFetched(AuthProfileFetched event, emit) async {
    User? profile;
    try {
      profile = await userRepository.getProfile(event.token);
      emit(AuthStateProfileFetchedSuccess(profile: profile));
    } catch (error) {
      emit(AuthStateProfileFetchedFailure());
    }
  }
}

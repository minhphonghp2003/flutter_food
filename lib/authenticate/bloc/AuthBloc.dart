import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:food/authenticate/repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _storage = new FlutterSecureStorage();
  final UserRepository userRepository = new UserRepository();
  AuthBloc() : super(AuthStateInitial()) {
    on<AuthLoggedIn>(_authLoggedIn);
    on<AuthLoginCookieChecked>(_authJwtChecked);
    on<AuthLoginCookieAdded>(_authJwtAdded);
    on<AuthRegistered>(_authRegistered);
    on<AuthProfileFetched>(_authProfileFetched);
    on<AuthEmailVerifiedSent>(_authEmailVerifiedSent);
    on<AuthProfileUpdated>(_authProfileUpdated);
  }

  void _authEmailVerifiedSent(event, emit) async {
    await userRepository.sendVerifiedEmail(event.email);
  }

  void _authLoggedIn(AuthLoggedIn event, emit) async {
    Map<dynamic, dynamic> loginToken = {};
    loginToken = await userRepository.login(event.username, event.password, event.oauth);

    if (loginToken.containsKey("error")) {
      emit(AuthStateLoginFailure(message: "No valid account"));
    } else {
      add(AuthLoginCookieAdded(credentials: loginToken));
    }
  }

  void _authRegistered(event, emit) async {
    Map<dynamic, dynamic> response = await userRepository.register(event.email, event.username, event.password);
    if (response.containsKey("error")) {
      emit(AuthStateRegisterFailure());
    } else {
      add(AuthLoggedIn(username: event.username, password: event.password));
    }
  }

  void _authJwtAdded(AuthLoginCookieAdded event, emit) async {
    String cookie = jsonEncode(event.credentials);
    await _storage.write(key: "login_cookie", value: cookie);
    emit(AuthStateLogInSuccess(authCredentials: event.credentials));
  }

  void _authJwtChecked(event, emit) async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    if (login_cookie == null) {
      emit(AuthStateLoginFailure(message: "No jwt"));
    } else {
      Map<dynamic, dynamic> decoded_login_cookie = jsonDecode(login_cookie);
      emit(AuthStateLogInSuccess(authCredentials: decoded_login_cookie));
    }
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

  void _authProfileUpdated(AuthProfileUpdated event, emit) async {
    Map<dynamic, dynamic> response = await userRepository.updateProfile(event.token, event.fields);
    if (response.containsKey("error")) {
      emit(AuthStateProfileUpdatedFailure());
    } else {
      User newProfile = User.fromJson(event.fields);
      emit(AuthStateProfileUpdatedSuccess(newProfile: newProfile));
    }
  }
}

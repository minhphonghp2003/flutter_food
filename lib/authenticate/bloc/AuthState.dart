import 'package:food/authenticate/model/User.dart';

abstract class AuthState {}

class AuthStateInitial extends AuthState {}

class AuthStateLogInSuccess extends AuthState {
  Map<dynamic, dynamic> authCredentials;

  AuthStateLogInSuccess({required this.authCredentials});
}

class AuthStateLoginFailure extends AuthState {
  String message;
  AuthStateLoginFailure({required this.message});
}

class AuthStateRegisterFailure extends AuthState {}

class AuthStateRegisterSuccess extends AuthState {
  Map<dynamic, dynamic> authCredentials;

  AuthStateRegisterSuccess({required this.authCredentials});
}

class AuthStateProfileFetchedSuccess extends AuthState {
  User profile;
  AuthStateProfileFetchedSuccess({required this.profile});
}

class AuthStateProfileFetchedFailure extends AuthState {}

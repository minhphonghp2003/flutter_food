abstract class AuthEvent {}

class AuthLoggedIn extends AuthEvent {
  String username;
  String password;
  String? oauth;
  AuthLoggedIn({required this.username, required this.password, this.oauth});
}

class AuthRegistered extends AuthEvent {
  final String username;
  final String email;
  final String password;
  AuthRegistered({required this.username, required this.email, required this.password});
}

class AuthProfileFetched extends AuthEvent {
  String token;
  AuthProfileFetched({required this.token});
}

class AuthLoginCookieChecked extends AuthEvent {}

class AuthLoginCookieAdded extends AuthEvent {
  Map<dynamic, dynamic> credentials;
  AuthLoginCookieAdded({required this.credentials});
}

class AuthEmailVerifiedSent extends AuthEvent {
  final String email;
  AuthEmailVerifiedSent({required this.email});
}

class AuthProfileUpdated extends AuthEvent {
  AuthProfileUpdated({required this.token, required this.fields});
  final String token;
  final Map<dynamic, dynamic> fields;
}

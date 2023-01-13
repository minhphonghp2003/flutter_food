abstract class AuthEvent {}

class AuthLoggedIn extends AuthEvent {
  String username;
  String password;
  AuthLoggedIn({required this.username, required this.password});
}

class AuthRegistered extends AuthEvent {
  final String username;
  final String phone;
  final String email;
  final String password;
  AuthRegistered({required this.username, required this.phone, required this.email, required this.password});
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

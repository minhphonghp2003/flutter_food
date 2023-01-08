abstract class Auth {}

class AuthLoggedIn extends Auth {
  String username;
  String password;
  AuthLoggedIn({required this.username, required this.password});
}

class AuthRegistered extends Auth {}

class AuthProfileFetched extends Auth {
  String token;
  AuthProfileFetched({required this.token});
}

class AuthLoginCookieChecked extends Auth {}

class AuthLoginCookieAdded extends Auth {
  Map<dynamic, dynamic> credentials;
  AuthLoginCookieAdded({required this.credentials});
}

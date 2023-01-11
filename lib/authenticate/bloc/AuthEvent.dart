abstract class Auth {}

class AuthLoggedIn extends Auth {
  String username;
  String password;
  AuthLoggedIn({required this.username, required this.password});
}

class AuthRegistered extends Auth {
  final String username;
  final String phone;
  final String email;
  final String password;
  AuthRegistered({required this.username, required this.phone, required this.email, required this.password});
}

class AuthProfileFetched extends Auth {
  String token;
  AuthProfileFetched({required this.token});
}

class AuthLoginCookieChecked extends Auth {}

class AuthLoginCookieAdded extends Auth {
  Map<dynamic, dynamic> credentials;
  AuthLoginCookieAdded({required this.credentials});
}

class AuthEmailVerifiedSent extends Auth {
  final String email;
  AuthEmailVerifiedSent({required this.email});
}

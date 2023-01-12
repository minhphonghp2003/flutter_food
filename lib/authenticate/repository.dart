import 'dart:math';

import 'package:food/authenticate/model/User.dart';
import 'package:http/http.dart' as http;

import 'dataProvider.dart';

class UserRepository {
  static final _httpclient = http.Client();

  var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  final UserProvider _userProvider = UserProvider(client: _httpclient);

  Future<User> getProfile(String token) async {
    return await _userProvider.getProfile(token);
  }

  Future<Map<dynamic, dynamic>> login(String username, String password) async {
    return await _userProvider.login(username, password);
  }

  Future<Map<dynamic, dynamic>> register(String email, String username, String phone, String password) async {
    String first_name = _getRandomString(5);
    String last_name = _getRandomString(4);

    Map<dynamic, dynamic> userCred = await _userProvider
        .register(User(password: password, email: email, first_name: first_name, last_name: last_name, phone: phone, username: username));
    return userCred;
  }

  Future<void> sendVerifiedEmail(String email) async {
    await _userProvider.sendVerifiedEmail(email);
  }

  Future<Map<dynamic, dynamic>> updateProfile(String token, Map<dynamic, dynamic> field) async {
    Map<dynamic, dynamic> response = await _userProvider.updateProfile(token, field);
    if (response.containsKey("error")) {
      return {"error": "Can not update profile"};
    }
    return response;
  }
}

// //
// void main() async {
//   UserRepository repo = new UserRepository();
//   String token =
//       "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwNWYyNGFiLTgxN2QtNGVkNi1iMGM4LTU0ZjQ5MWYwOWIyNCIsInVzZXJuYW1lIjoiQSIsImlhdCI6MTY3MTM3NzQ1NH0.E5QDYog_M35gt3E11gPSU1s33meQ-1ufJGKAIwWNwb0_8mTQupVcEf0qKVfeqYkAPnVMFi7iG3rfOVtTvdlLYFhnMba-3TAhVjFjR7mGrnW14G-EI6G_VQa3sx4rj6mXgYUqqyObfhODhuw-8r4louSOxa7LZz7uE1sKHWZ1Q0U";
//   // var result = await repo.login("user6", "user7");
//   // print(result);
//   var res = await repo.updateProfile(token, {"first_name": "John", "last_name": "Cena", "email": "joincena", "phone": "1234"});
//   print(res);
//
//   // print(profile.id);
//   // var result = await repo.register("email8", "user8", "888", "user8");
//   // print(result);
// }

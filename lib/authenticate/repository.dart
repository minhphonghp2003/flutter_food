import 'dart:math';

import 'package:food/authenticate/model/User.dart';
import 'package:http/http.dart' as http;

import 'dataProvider.dart';

class UserRepository {
  static final _httpclient = http.Client();

  var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  final UserProvider _userProvider = UserProvider(client: _httpclient);

  Future<User> getProfile(String token) async {
    return await _userProvider.getProfile(token);
  }

  Future<Map<dynamic, dynamic>> login(String username, String password) async {
    return await _userProvider.login(username, password);
  }

  Future<Map<dynamic, dynamic>> register(
      String email, String username, String phone, String password) async {
    String first_name = _getRandomString(5);
    String last_name = _getRandomString(4);

    Map<dynamic, dynamic> userCred = await _userProvider.register(User(
        password: password,
        email: email,
        first_name: first_name,
        last_name: last_name,
        phone: phone,
        username: username));
    return userCred;
  }
}
//
// void main() async {
//   UserRepository repo = new UserRepository();
//   // var result = await repo.login("user6", "user7");
//   // print(result);
//   var profile = await repo.getProfile("token");
//   print(profile.id);
//   // var result = await repo.register("email8", "user8", "888", "user8");
//   // print(result);
// }

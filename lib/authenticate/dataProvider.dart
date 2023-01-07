import 'dart:convert';

import 'package:food/authenticate/model/User.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  var host = 'localhost:3000';
  var path = 'v1/customer';
  var client;
  UserProvider({required this.client});

  Future<User> getProfile(String token) async {
    var response = await client.get(Uri.http(host, "$path/profile"), headers: {
      "token": token,
    });
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    User user = User.fromJson(decodedResponse);
    return user;
  }

  Future<Map<dynamic, dynamic>> login(String username, String password) async {
    var client = http.Client();
    var response = await client.post(Uri.http(host, "$path/login"),
        body: {"username": username, "password": password});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    return decodedResponse;
  }

  Future<Map<dynamic, dynamic>> register(User userCred) async {
    var client = http.Client();
    var response = await client.post(Uri.http(host, "$path/register"),
        body: userCred.toJsonForReg());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }
}

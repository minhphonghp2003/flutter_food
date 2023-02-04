import 'dart:convert';

import 'package:emailjs/emailjs.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

final GoogleSignIn _googleSignIn = GoogleSignIn();

class UserProvider {
  var host = 'http://minhnitro:3000/';
  var path = 'v1/customer';
  http.Client client;
  UserProvider({required this.client});

  Future<void> _sendEmail(String to_address, String link) async {
    Map<String, dynamic> templateParams = {'to_address': to_address, 'link': link};

    await EmailJS.send(
      'service_ftiggz8',
      'template_0eefsim',
      templateParams,
      const Options(
        publicKey: 'uFlpriBhFEE_5Ct8N',
        privateKey: 'wqgXW5jXRe_W5Nl75dlNv',
      ),
    );
  }

  Future<void> sendVerifiedEmail(String email) async {
    var emailId = await client.post(Uri.parse(host + "$path/emailentry"), body: {"email": email});
    var link = "create link";
    await _sendEmail(email, link);
  }

  Future<User> getProfile(String token) async {
    var response = await client.get(Uri.parse(host + "$path/profile"), headers: {
      "token": token,
    });
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    User user = User.fromJson(decodedResponse);
    return user;
  }

  Future<Map<dynamic, dynamic>> updateProfile(String token, Map<dynamic, dynamic> field) async {
    // field: first_name, last_name, email,phone
    var response = await client.put(Uri.parse(host + "$path/profile"),
        headers: {
          "token": token,
        },
        body: field);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }

  Future<Map<dynamic, dynamic>> login(String username, String password, String? oauth) async {
    var client = http.Client();
    var response;
    if (oauth == null) {
      response = await client.post(Uri.parse(host + "$path/login"), body: {"username": username, "password": password});
    } else {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final GoogleSignInAuthentication? newGoogleAuth = await googleUser?.authentication;
      print("googleUser: ${googleUser}");
      print("googleAuth: ${googleAuth?.accessToken}, id: ${newGoogleAuth?.idToken}");

      // response = await client.get(Uri.parse(host + "$path/login/" + oauth));
    }
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    return decodedResponse;
  }

  Future<Map<dynamic, dynamic>> register(User userCred) async {
    var client = http.Client();
    var response = await client.post(Uri.parse(host + "$path/register"), body: userCred.toJsonForReg());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }
}

// void main() async {
//   String token =
//       "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwNWYyNGFiLTgxN2QtNGVkNi1iMGM4LTU0ZjQ5MWYwOWIyNCIsInVzZXJuYW1lIjoiQSIsImlhdCI6MTY3MTM3NzQ1NH0.E5QDYog_M35gt3E11gPSU1s33meQ-1ufJGKAIwWNwb0_8mTQupVcEf0qKVfeqYkAPnVMFi7iG3rfOVtTvdlLYFhnMba-3TAhVjFjR7mGrnW14G-EI6G_VQa3sx4rj6mXgYUqqyObfhODhuw-8r4louSOxa7LZz7uE1sKHWZ1Q0U";
//   var res = await UserProvider(client: http.Client()).oauthLogin("google");
// }

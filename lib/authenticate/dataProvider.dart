import 'dart:convert';

import 'package:emailjs/emailjs.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  var host = '192.168.1.6:3000';
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
    var emailId = await client.post(Uri.http(host, "$path/emailentry"), body: {"email": email});
    var link = "create link";
    await _sendEmail(email, link);
  }

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
    var response = await client.post(Uri.http(host, "$path/login"), body: {"username": username, "password": password});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    return decodedResponse;
  }

  Future<Map<dynamic, dynamic>> register(User userCred) async {
    var client = http.Client();
    var response = await client.post(Uri.http(host, "$path/register"), body: userCred.toJsonForReg());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }
}

void main() async {
  // var res = await UserProvider(client: http.Client()).sendVerifiedEmail("minhphonghp2003@gmail.com");
  // print(res);
  // await UserProvider(client: http.Client())._sendEmail("minhphonghp2003@gmail.com", "this is a link");
}

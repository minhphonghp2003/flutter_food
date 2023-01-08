import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storage = new FlutterSecureStorage();
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("FoodList"),
          TextButton.icon(
              onPressed: () {
                String cookie = jsonEncode({
                  "token":
                      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwNWYyNGFiLTgxN2QtNGVkNi1iMGM4LTU0ZjQ5MWYwOWIyNCIsInVzZXJuYW1lIjoiQSIsImlhdCI6MTY3MTM3NzQ1NH0.E5QDYog_M35gt3E11gPSU1s33meQ-1ufJGKAIwWNwb0_8mTQupVcEf0qKVfeqYkAPnVMFi7iG3rfOVtTvdlLYFhnMba-3TAhVjFjR7mGrnW14G-EI6G_VQa3sx4rj6mXgYUqqyObfhODhuw-8r4louSOxa7LZz7uE1sKHWZ1Q0U"
                });
                storage.write(key: "login_cookie", value: cookie);
              },
              icon: Icon(Icons.route),
              label: Text("Create jwt")),
          TextButton.icon(
              onPressed: () {
                storage.delete(key: "login_cookie");
              },
              icon: Icon(Icons.route),
              label: Text("Delete jwt")),
        ],
      )),
    );
  }
}

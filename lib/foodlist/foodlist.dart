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
                storage.delete(key: "login_cookie");
              },
              icon: Icon(Icons.route),
              label: Text("Logout")),
        ],
      )),
    );
  }
}

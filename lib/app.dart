import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/authenticate.dart';
import 'package:food/foodlist/foodlist.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  final storage = new FlutterSecureStorage();
  var jwt;
  var loading = true;
  void checkJwt() async {
    loading = false;
    jwt = await storage.read(key: "jwt");
    setState(() {
      jwt;
    });
  }

// Read value
  @override
  void initState() {
    super.initState();
    checkJwt();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (context) {
      if (jwt == null) {
        return Authentication();
      }
      return FoodList();
    }));
  }
}

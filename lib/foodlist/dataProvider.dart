import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/Category.dart';

class FoodProvider {
  var host = '172.16.1.40:3000';
  var path = 'v1/product';
  http.Client client;
  FoodProvider({required this.client});

  Future<List<Category>> getAllCategories() async {
    var response = await client.get(Uri.http(host, "$path/category/all"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Category>? categories = [];
    for (var category in decodedResponse) {
      categories.add(Category.fromJson(category));
    }

    return categories;
  }
}

void main() async {
  var provider = new FoodProvider(client: http.Client());
  print(await provider.getAllCategories());
}

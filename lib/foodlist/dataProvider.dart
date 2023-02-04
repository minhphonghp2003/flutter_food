import 'dart:convert';

import 'package:food/foodlist/model/Food.dart';
import 'package:http/http.dart' as http;

import 'model/Category.dart';

class FoodProvider {
  var host = 'http://minhnitro:3000/';
  var path = 'v1/product';
  http.Client client;
  FoodProvider({required this.client});

  Future<List<Category>> getAllCategories() async {
    var response = await client.get(Uri.parse(host + "$path/category/all"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Category>? categories = [];
    for (var category in decodedResponse) {
      categories.add(Category.fromJson(category));
    }

    return categories;
  }

  Future<List<Food>> getProducts(int page, int size, String? sort, String? userId) async {
    var response = await client.get(Uri.parse(host + "$path?page=$page&size=$size&sort=$sort&userId=$userId"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Food> food = [];

    for (var f in decodedResponse["hits"]) {
      food.add(Food.fromJson(f["_source"]));
    }
    return food;
  }
}

void main() async {
  var provider = new FoodProvider(client: http.Client());
  // print(await provider.getAllCategories());
  print(await provider.getProducts(1, 2, "lastest", "c0a5bc18-c2c6-45dc-bd9d-846ef63ff265"));
}

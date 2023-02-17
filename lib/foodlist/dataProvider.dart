import 'dart:convert';

import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/GetProductParams.dart';
import 'package:http/http.dart' as http;

import 'model/Addon.dart';
import 'model/Category.dart';
import 'model/Review.dart';

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

  Future<FoodDetailImgAndDes> getFoodDetailImgAndDes(String id) async {
    var response = await client.get(Uri.parse(host + "$path/detail/$id"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    FoodDetailImgAndDes ImgAndDis = FoodDetailImgAndDes.fromJson(decodedResponse["detail"]);

    return ImgAndDis;
  }

  Future<List<Addon>> getAddons() async {
    var response = await client.get(Uri.parse(host + "$path/alladdon"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Addon> Addons = (decodedResponse as List).map((e) => Addon.fromJson(e)).toList();
    return Addons;
  }

  Future<List<Food>> getProducts(GetProductParams params) async {
    var response = await client.get(Uri.parse(host +
        "$path?categoryId=${params.category != null ? params.category?.id : "*"}&size=${params.size}&page=${params.page}&sortField=${params.sort}&sortDirect=${params.sortDirect}&userId=${params.userId}"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Food> food = [];

    for (var f in decodedResponse["hits"]) {
      food.add(Food.fromJson(f["_source"]));
    }
    return food;
  }

  Future<List<Food>> search(SearchParams params) async {
    var response = await client.get(Uri.parse(host +
        "$path/search?size=${params.size}&page=${params.page}&sortField=${params.sort}&sortDirect=${params.sortDirect}&keyword=${params.keyword}"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Food> food = [];
    for (var f in decodedResponse["hits"]) {
      food.add(Food.fromJson(f["_source"]));
    }
    return food;
  }

  Future<List<Review>> getReviews(String productId) async {
    var response = await client.get(Uri.parse(host + "$path/review?productId=${productId}"));
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    List<Review> reviews = [];
    for (var f in decodedResponse) {
      reviews.add(Review.fromJson(f));
    }
    return reviews;
  }

  Future<void> addReview(Review review) async {
    var response = await client.post(Uri.parse(host + "$path/review"), body: review.toJson());
  }
}

void main() async {
  var provider = new FoodProvider(client: http.Client());
  Review review = Review(content: "", name: "", rating: 5, email: "review@food.com", productId: "1a2e8eae-9c27-4af3-9e91-19800ca2fc85");
  await provider.addReview(review);
  // await (provider.getReviews("1a2e8eae-9c27-4af3-9e91-19800ca2fc85"));
  // print((await provider.getFoodDetailImgAndDes("53d8e8c3-7ecd-4cf7-a0e1-2d691b100003")).imageLinks);
  // print(await provider.getProducts(1, 2, "lastest", "c0a5bc18-c2c6-45dc-bd9d-846ef63ff265"));
  // await provider.getProductsByCategory(null, "price", "desc", 5, 1);
}

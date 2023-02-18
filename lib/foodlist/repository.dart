import 'package:food/foodlist/dataProvider.dart';
import 'package:food/foodlist/model/Cart.dart';
import 'package:food/foodlist/model/Category.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/GetProductParams.dart';
import 'package:food/foodlist/model/Review.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  FoodProvider _dataProvider = new FoodProvider(client: http.Client());
  Future<List<Category>> getAllCategory() async {
    return await _dataProvider.getAllCategories();
  }

  Future<List<Food>> getProducts(GetProductParams params) async {
    return await _dataProvider.getProducts(params);
  }

  Future<List<Food>> search(SearchParams params) async {
    return await _dataProvider.search(params);
  }

  Future<FoodDetailImgAndDes> getFoodImgAndDes(String id) async {
    return await _dataProvider.getFoodDetailImgAndDes(id);
  }

  Future<List<Review>> getReviews(String productId) async {
    return await _dataProvider.getReviews(productId);
  }

  Future<void> addReview(Review review) async {
    await _dataProvider.addReview(review);
  }

  Future<Map<dynamic, dynamic>> addToCart(String productId, int quantity, String token) async {
    return await _dataProvider.addToCart(productId, quantity, token);
  }

  Future<List<Cart>> getCart(String token) async {
    return await _dataProvider.getCart(token);
  }
}

import 'package:food/foodlist/dataProvider.dart';
import 'package:food/foodlist/model/Category.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  FoodProvider _dataProvider = new FoodProvider(client: http.Client());
  Future<List<Category>> getAllCategory() async {
    return await _dataProvider.getAllCategories();
  }

  Future<List<Food>> getProducts(int page, int size, String? sort, String? sortDirect, String? userId) async {
    return await _dataProvider.getProducts(page, size, sort, sortDirect, userId);
  }
}

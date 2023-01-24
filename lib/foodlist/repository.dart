import 'package:food/foodlist/dataProvider.dart';
import 'package:food/foodlist/model/Category.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  FoodProvider _dataProvider = new FoodProvider(client: http.Client());
  Future<List<Category>> getAllCategory() async {
    return await _dataProvider.getAllCategories();
  }
}

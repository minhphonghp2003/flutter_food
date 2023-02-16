import 'package:food/foodlist/dataProvider.dart';
import 'package:food/foodlist/model/Addon.dart';
import 'package:food/foodlist/model/Category.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/GetProductParams.dart';
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

  Future<List<Addon>> getAddons() async {
    return await _dataProvider.getAddons();
  }
}

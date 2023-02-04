import '../model/Category.dart';
import '../model/Food.dart';

abstract class FoodState {}

class FoodStateInitial extends FoodState {}

class FoodStateAllCategoriesFetchedSuccess extends FoodState {
  List<Category> categories;
  FoodStateAllCategoriesFetchedSuccess({required this.categories});
}

class FoodStateProductFetchedSuccess extends FoodState {
  List<Food> food;
  String? sort;
  FoodStateProductFetchedSuccess({required this.food, this.sort});
}

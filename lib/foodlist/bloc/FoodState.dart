import '../model/Category.dart';

abstract class FoodState {}

class FoodStateInitial extends FoodState {}

class FoodStateAllCategoriesFetchedSuccess extends FoodState {
  List<Category> categories;
  FoodStateAllCategoriesFetchedSuccess({required this.categories});
}

import '../model/Addon.dart';
import '../model/Category.dart';
import '../model/Food.dart';
import '../model/Review.dart';

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

class FoodStateDescriptionAndImgFetchedSuccess extends FoodState {
  FoodDetailImgAndDes imgAndDes;
  FoodStateDescriptionAndImgFetchedSuccess({required this.imgAndDes});
}

class FoodStateAddonFetchedSuccess extends FoodState {
  List<Addon> addons;
  FoodStateAddonFetchedSuccess({required this.addons});
}

class FoodStateReviewFetchedSuccess extends FoodState {
  List<Review> reviews;
  FoodStateReviewFetchedSuccess({required this.reviews});
}

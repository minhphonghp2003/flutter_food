import '../model/Category.dart';
import '../model/Review.dart';

abstract class FoodEvent {}

class FoodAllCategoriesFetched extends FoodEvent {}

class FoodProductFetched extends FoodEvent {
  int page;
  int size;
  String sort;
  String sortDirect;
  Category? category;
  String? keyword;

  FoodProductFetched({required this.page, this.keyword, this.category, required this.size, this.sort = "createdAt", this.sortDirect = "desc"});
}

class FoodDescriptionAndImageFetched extends FoodEvent {
  String id;
  FoodDescriptionAndImageFetched({required this.id});
}

class FoodAddonFetched extends FoodEvent {}

class FoodReviewFetched extends FoodEvent {
  String productId;
  FoodReviewFetched({required this.productId});
}

class FoodReviewAdded extends FoodEvent {
  Review review;
  FoodReviewAdded({required this.review});
}

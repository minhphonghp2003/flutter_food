import '../model/Category.dart';

abstract class FoodEvent {}

class FoodAllCategoriesFetched extends FoodEvent {}

class FoodProductFetched extends FoodEvent {
  int page;
  int size;
  String sort;
  String sortDirect;
  Category? category;

  FoodProductFetched({required this.page, this.category, required this.size, this.sort = "createdAt", this.sortDirect = "desc"});
}

class FoodDescriptionAndImageFetched extends FoodEvent {
  String id;
  FoodDescriptionAndImageFetched({required this.id});
}

class FoodAddonFetched extends FoodEvent {}

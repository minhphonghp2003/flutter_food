import '../model/Category.dart';

abstract class FoodEvent {}

class FoodAllCategoriesFetched extends FoodEvent {}

class FoodProductFetched extends FoodEvent {
  int page;
  int size;
  String? sort = null;
  String? sortDirect = null;
  FoodProductFetched({required this.page, required this.size, this.sort, this.sortDirect});
}

class FoodProductByCategoryFetched extends FoodEvent {
  int page;
  int size;
  String sort;
  String sortDirect;
  Category? category;
  FoodProductByCategoryFetched({required this.page, required this.size, required this.sort, required this.sortDirect, this.category});
}

class FoodDescriptionAndImageFetched extends FoodEvent {
  String id;
  FoodDescriptionAndImageFetched({required this.id});
}

class FoodAddonFetched extends FoodEvent {}

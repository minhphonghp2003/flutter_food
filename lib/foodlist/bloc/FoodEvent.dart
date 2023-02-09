abstract class FoodEvent {}

class FoodAllCategoriesFetched extends FoodEvent {}

class FoodProductFetched extends FoodEvent {
  int page;
  int size;
  String? sort = null;
  String? sortDirect = null;
  FoodProductFetched({required this.page, required this.size, this.sort, this.sortDirect});
}

class FoodDescriptionAndImageFetched extends FoodEvent {
  String id;
  FoodDescriptionAndImageFetched({required this.id});
}

class FoodAddonFetched extends FoodEvent {}

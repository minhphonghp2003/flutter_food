abstract class FoodEvent {}

class FoodAllCategoriesFetched extends FoodEvent {}

class FoodProductFetched extends FoodEvent {
  int page;
  int size;
  String? sort = null;
  FoodProductFetched({required this.page, required this.size, this.sort});
}

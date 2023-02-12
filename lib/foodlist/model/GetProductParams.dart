import 'Category.dart';

class GetProductParams {
  Category? category;
  String sort;
  String sortDirect;
  int size;
  int page;
  String? userId;
  GetProductParams({required this.sort, required this.sortDirect, this.userId, required this.size, required this.page, this.category});
}

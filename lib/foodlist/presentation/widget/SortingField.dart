import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';

import '../../model/Category.dart';

abstract class SortField {
  void fetchSortedData(BuildContext context, Category? category);
  late String searchName;
  late String title;
  late bool isActive;
  late String sort;
  late String sortDirect;
}

class Trending implements SortField {
  String searchName = "Most popular";
  String title = "Trending";
  @override
  void fetchSortedData(BuildContext context, Category? category) async {
    context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 8, sortDirect: sortDirect, sort: sort, category: category));
  }

  bool isActive = false;

  @override
  String sort = "reviewCount";

  @override
  String sortDirect = "desc";
}

class New implements SortField {
  @override
  String sort = "createdAt";

  @override
  String sortDirect = "desc";
  String searchName = "New arrival";
  String title = "New";
  @override
  void fetchSortedData(BuildContext context, Category? category) async {
    context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 8, sortDirect: sortDirect, sort: sort, category: category));
  }

  bool isActive = false;
}

class Rating implements SortField {
  @override
  String sort = "rating";

  @override
  String sortDirect = "desc";
  String searchName = "High rating";
  String title = "High rating";
  @override
  void fetchSortedData(BuildContext context, Category? category) async {
    context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 8, sortDirect: sortDirect, sort: sort, category: category));
  }

  bool isActive = false;
}

class LowPrice implements SortField {
  @override
  String sort = "price";

  @override
  String sortDirect = "asc";
  String searchName = "Good price";
  String title = "Low price";
  @override
  void fetchSortedData(BuildContext context, Category? category) async {
    context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 8, sortDirect: sortDirect, sort: sort, category: category));
  }

  bool isActive = false;
}

class HighPrice implements SortField {
  @override
  String sort = "price";

  @override
  String sortDirect = "desc";
  String searchName = "High price";
  String title = "High price";
  @override
  void fetchSortedData(BuildContext context, Category? category) async {
    context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 8, sortDirect: sortDirect, sort: sort, category: category));
  }

  bool isActive = false;
}

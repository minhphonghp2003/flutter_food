import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/model/Addon.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/GetProductParams.dart';
import 'package:food/foodlist/repository.dart';

import '../model/Category.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final _storage = new FlutterSecureStorage();
  FoodRepository _foodRepository = new FoodRepository();
  FoodBloc() : super(FoodStateInitial()) {
    on<FoodAllCategoriesFetched>(_foodAllCategoriesFetched);
    on<FoodDescriptionAndImageFetched>(_foodDescriptionAndImgFetched);
    on<FoodAddonFetched>(_foodAddonFetched);
    on<FoodProductFetched>(_foodProductFetched);
  }
  Future<String?> _getToken() async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    String? token = jsonDecode(login_cookie!)["token"];
    return token;
  }

  _foodAddonFetched(event, emit) async {
    List<Addon> addons = await _foodRepository.getAddons();
    emit(FoodStateAddonFetchedSuccess(addons: addons));
  }

  _foodDescriptionAndImgFetched(event, emit) async {
    FoodDetailImgAndDes desImg;
    desImg = await _foodRepository.getFoodImgAndDes(event.id);
    emit(FoodStateDescriptionAndImgFetchedSuccess(imgAndDes: desImg));
  }

  _foodProductFetched(FoodProductFetched event, emit) async {
    String? userId = null;
    String? login_cookie = await _storage.read(key: "login_cookie");
    if (login_cookie != null) {
      userId = jsonDecode(login_cookie)["id"];
    }
    GetProductParams params = new GetProductParams(
        sort: event.sort, sortDirect: event.sortDirect, size: event.size, page: event.page, category: event.category, userId: userId);
    List<Food> food = await _foodRepository.getProducts(params);

    emit(FoodStateProductFetchedSuccess(food: food, sort: event.sort));
  }

  _foodAllCategoriesFetched(event, emit) async {
    List<Category> _foodCategories = await _foodRepository.getAllCategory();
    emit(FoodStateAllCategoriesFetchedSuccess(categories: _foodCategories));
  }
}

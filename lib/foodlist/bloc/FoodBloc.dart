import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/model/Addon.dart';
import 'package:food/foodlist/model/Food.dart';
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
    on<FoodProductByCategoryFetched>(_foodProductByCategoryFetched);
  }
  Future<String?> _getToken() async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    String? token = jsonDecode(login_cookie!)["token"];
    return token;
  }

  _foodProductByCategoryFetched(FoodProductByCategoryFetched event, emit) async {
    List<Food> food = await _foodRepository.getProductsByCategory(event.category, event.sort, event.sortDirect, event.size, event.page);
    print(food);
    emit(FoodStateProductFetchedSuccess(food: food, sort: event.sort));
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
    List<Food> food = await _foodRepository.getProducts(event.page, event.size, event.sort, event.sortDirect, userId);

    emit(FoodStateProductFetchedSuccess(food: food, sort: event.sort));
  }

  _foodAllCategoriesFetched(event, emit) async {
    List<Category> _foodCategories = await _foodRepository.getAllCategory();
    emit(FoodStateAllCategoriesFetchedSuccess(categories: _foodCategories));
  }
}

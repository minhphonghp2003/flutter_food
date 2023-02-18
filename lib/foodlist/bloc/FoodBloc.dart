import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/model/Cart.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/GetProductParams.dart';
import 'package:food/foodlist/repository.dart';

import '../model/Category.dart';
import '../model/Review.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final _storage = new FlutterSecureStorage();
  FoodRepository _foodRepository = new FoodRepository();
  FoodBloc() : super(FoodStateInitial()) {
    on<FoodAllCategoriesFetched>(_foodAllCategoriesFetched);
    on<FoodDescriptionAndImageFetched>(_foodDescriptionAndImgFetched);
    on<FoodProductFetched>(_foodProductFetched);
    on<FoodReviewFetched>(_foodReviewFetched);
    on<FoodReviewAdded>(_foodReviewAdded);
    on<FoodAddToCart>(_foodAddToCart);
    on<FoodCartGotten>(_foodCartGotten);
  }
  Future<String?> _getToken() async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    String? token = login_cookie != null ? jsonDecode(login_cookie)["token"] : null;
    return token;
  }

  _foodCartGotten(FoodCartGotten event, emit) async {
    String? token = await _getToken();
    if (token == null) {
      emit(FoodStateGetCartFailure());
    } else {
      List<Cart> carts = await _foodRepository.getCart(token);
      emit(FoodStateGetCartSuccess(carts: carts));
    }
  }

  _foodAddToCart(FoodAddToCart event, emit) async {
    String? token = await _getToken();
    if (token == null) {
      emit(FoodStateAddToCartFailure(error: "No valid token"));
    } else {
      await _foodRepository.addToCart(event.productId, event.quanity, token);
      emit(FoodStateAddToCartSuccess());
    }
  }

  _foodReviewAdded(FoodReviewAdded event, emit) async {
    if (event.review.name.length == 0 || event.review.content.length == 0) {
      emit(FoodStateReviewAddedFailure());
    } else {
      await _foodRepository.addReview(event.review);
      emit(FoodStateReviewAddedSuccess());
    }
  }

  _foodReviewFetched(FoodReviewFetched event, emit) async {
    List<Review> reviews = await _foodRepository.getReviews(event.productId);
    emit(FoodStateReviewFetchedSuccess(reviews: reviews));
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
    if (event.keyword != null) {
      SearchParams params =
          new SearchParams(sort: event.sort, sortDirect: event.sortDirect, size: event.size, page: event.page, keyword: event.keyword);

      List<Food> food = await _foodRepository.search(params);

      emit(FoodStateProductFetchedSuccess(food: food, sort: event.sort));
    } else {
      GetProductParams params = new GetProductParams(
          sort: event.sort, sortDirect: event.sortDirect, size: event.size, page: event.page, category: event.category, userId: userId);
      List<Food> food = await _foodRepository.getProducts(params);

      emit(FoodStateProductFetchedSuccess(food: food, sort: event.sort));
    }
  }

  _foodAllCategoriesFetched(event, emit) async {
    List<Category> _foodCategories = await _foodRepository.getAllCategory();
    emit(FoodStateAllCategoriesFetchedSuccess(categories: _foodCategories));
  }
}

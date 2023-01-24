import 'package:bloc/bloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/repository.dart';

import '../model/Category.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodRepository _foodRepository = new FoodRepository();
  FoodBloc() : super(FoodStateInitial()) {
    on<FoodAllCategoriesFetched>(_foodAllCategoriesFetched);
  }
  _foodAllCategoriesFetched(event, emit) async {
    List<Category> _foodCategories = await _foodRepository.getAllCategory();
    print(_foodCategories);
  }
}

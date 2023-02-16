import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/presentation/FoodSearch.dart';
import 'package:food/foodlist/presentation/widget/Category.dart';
import 'package:food/foodlist/presentation/widget/ProductWidget.dart';
import 'package:food/foodlist/presentation/widget/SubProductWidget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../model/Category.dart';
import '../model/Food.dart';

class FoodListPage extends StatelessWidget {
  FoodListPage({Key? key}) : super(key: key);

  RefreshController _refreshController = RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(),
        ),
        BlocProvider.value(
          value: BlocProvider.of<FoodBloc>(context)
            ..add(FoodAllCategoriesFetched())
            ..add(FoodProductFetched(page: 1, size: 5))
            ..add(FoodProductFetched(page: 1, size: 5, sort: "reviewCount", sortDirect: "desc"))
            ..add(FoodProductFetched(page: 1, size: 5, sort: "price", sortDirect: "asc")),
          // child: (),
        )
      ],
      child: SafeArea(
          child: Container(
              // homescreenzCR (814:6311)
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: SmartRefresher(
                enablePullDown: true,
                header: WaterDropMaterialHeader(),
                controller: _refreshController,
                onRefresh: () {
                  context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 5));
                  context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 5, sort: "reviewCount", sortDirect: "desc"));
                  context.read<FoodBloc>().add(FoodProductFetched(page: 1, size: 5, sort: "price", sortDirect: "asc"));
                  _refreshController.refreshCompleted();
                },
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup39gm5Ds (W75U2TyUnhkxLpcuda39Gm)
                      padding: EdgeInsets.fromLTRB(25, 32, 0, 24),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header(),
                          Container(
                            // whatwouldyouliketoorderNXj (814:6473)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                            constraints: BoxConstraints(
                              maxWidth: 266,
                            ),
                            child: Text(
                              'What would you like\nto order',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                height: 1.2575,
                                color: Color(0xff313642),
                              ),
                            ),
                          ),
                          // SearchArea(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 25, 30),
                            child: TextFormField(
                              onFieldSubmitted: (val) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => FoodSearch(
                                      searchName: "Search results for \n${val}",
                                      sortedType: "New arrival",
                                    ),
                                  ),
                                );
                              },
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.redAccent,
                                ),
                                labelText: 'Search for food or categories...',
                              ),
                            ),
                          ),
                          CategorySection(),
                          Container(
                            // autogroupd83bLCH (W75QAk4va9HNfubZz5d83b)
                            margin: EdgeInsets.fromLTRB(14, 0, 23.66, 10),
                            width: double.infinity,
                            height: 23,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // featuredrestaurantsrgR (814:6414)
                                  margin: EdgeInsets.fromLTRB(0, 0, 96, 0),
                                  child: Text(
                                    'New Products',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xff323643),
                                    ),
                                  ),
                                ),
                                Container(
                                  // group17552Ax1 (814:6415)
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                  height: double.infinity,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => FoodSearch(
                                            sortedType: "New arrival",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // viewallJHX (814:6416)
                                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Text(
                                            'View All',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575,
                                              color: Color(0xfff56844),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            // path3424ok5 (814:6417)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4.32),
                                            // width: 3.34,
                                            // height: 6.68,
                                            child: Text(">", style: TextStyle(color: Colors.red))),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          NewProduct(),
                          Container(
                            // autogroupd83bLCH (W75QAk4va9HNfubZz5d83b)
                            margin: EdgeInsets.fromLTRB(14, 0, 23.66, 10),
                            width: double.infinity,
                            height: 23,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // featuredrestaurantsrgR (814:6414)
                                  margin: EdgeInsets.fromLTRB(0, 0, 96, 0),
                                  child: Text(
                                    'Most popular',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xff323643),
                                    ),
                                  ),
                                ),
                                Container(
                                  // group17552Ax1 (814:6415)
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                  height: double.infinity,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => FoodSearch(
                                            sortedType: "Most popular",
                                            sort: "reviewCount",
                                            sortDirect: "desc",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // viewallJHX (814:6416)
                                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Text(
                                            'View All',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575,
                                              color: Color(0xfff56844),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            // path3424ok5 (814:6417)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4.32),
                                            // width: 3.34,
                                            // height: 6.68,
                                            child: Text(">", style: TextStyle(color: Colors.red))),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          PopularSection(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            // autogroupd83bLCH (W75QAk4va9HNfubZz5d83b)
                            margin: EdgeInsets.fromLTRB(14, 10, 23.66, 10),
                            width: double.infinity,
                            height: 23,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // featuredrestaurantsrgR (814:6414)
                                  margin: EdgeInsets.fromLTRB(0, 0, 96, 0),
                                  child: Text(
                                    'Good Price',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xff323643),
                                    ),
                                  ),
                                ),
                                Container(
                                  // group17552Ax1 (814:6415)
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                  height: double.infinity,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => FoodSearch(
                                            sortedType: "Good price",
                                            sort: "price",
                                            sortDirect: "asc",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // viewallJHX (814:6416)
                                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Text(
                                            'View All',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575,
                                              color: Color(0xfff56844),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            // path3424ok5 (814:6417)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4.32),
                                            // width: 3.34,
                                            // height: 6.68,
                                            child: Text(">", style: TextStyle(color: Colors.red))),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GoodPriceSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}

class GoodPriceSection extends StatelessWidget {
  GoodPriceSection({
    Key? key,
  }) : super(key: key);
  List<Food>? food = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
      if (state is FoodStateProductFetchedSuccess && state.sort == 'price') {
        food = state.food;
      }
      if (food!.length > 0) {
        return Container(
          // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
          margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
          width: double.infinity,
          height: 229,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: food!.map((e) => SubProductWidget(food: e)).toList(),
          ),
        );
      }
      return Container(child: Text("Please wait..."));
    });
  }
}

class PopularSection extends StatelessWidget {
  PopularSection({
    Key? key,
  }) : super(key: key);
  List<Food>? food = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
      if (state is FoodStateProductFetchedSuccess && state.sort == "reviewCount") {
        food = state.food;
      }
      if (food!.length > 0) {
        return Container(
          // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
          margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
          width: double.infinity,
          height: 229,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: food!.map((e) => SubProductWidget(food: e)).toList(),
          ),
        );
      }
      return Container(child: Text("Please wait..."));
    });
  }
}

class NewProduct extends StatelessWidget {
  NewProduct({
    Key? key,
  }) : super(key: key);
  List<Food>? food = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
      if (state is FoodStateProductFetchedSuccess && state.sort == "createdAt") {
        food = state.food;
      }
      if (food!.length > 0) {
        return Container(
          // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
          margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
          width: double.infinity,
          height: 229,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: food!
                .map((e) => ProductWidget(
                      food: e,
                    ))
                .toList(),
          ),
        );
      }
      return Container(child: Text("Please wait..."));
    });
  }
}

class CategorySection extends StatelessWidget {
  CategorySection({
    Key? key,
  }) : super(key: key);
  List<Category>? categories = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        // group17846Cad (814:6509)
        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
        width: 424.67,
        height: 98,
        child: BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
          if (state is FoodStateAllCategoriesFetchedSuccess) {
            categories = state.categories;
          }
          if (categories!.length > 0) {
            return ListView(
              scrollDirection: Axis.horizontal,
              children: categories!.map((category) {
                return CategoryWidget(category: category);
              }).toList(),
            );
          }
          return Container(child: Text("Please wait..."));
        }));
  }
}

import 'package:flutter/material.dart';
import 'package:food/foodlist/presentation/widget/Category.dart';
import 'package:food/foodlist/presentation/widget/FeatureRestau.dart';
import 'package:food/foodlist/presentation/widget/PopularItems.dart';
import 'package:food/foodlist/presentation/widget/SearchArea.dart';

class FoodListPage extends StatelessWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            // homescreenzCR (814:6311)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
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
                      SearchArea(),
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
                                'Featured Restaurants',
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // viewallJHX (814:6416)
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: GestureDetector(
                                      onTap: () {},
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
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        // path3424ok5 (814:6417)
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 4.32),
                                        // width: 3.34,
                                        // height: 6.68,
                                        child: Text(">", style: TextStyle(color: Colors.red))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      FeatureSection(),
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
                                'Popular Items',
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // viewallJHX (814:6416)
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: GestureDetector(
                                      onTap: () {},
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
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        // path3424ok5 (814:6417)
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 4.32),
                                        // width: 3.34,
                                        // height: 6.68,
                                        child: Text(">", style: TextStyle(color: Colors.red))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopularSection(),
                    ],
                  ),
                ),
              ],
            )));
  }
}

class PopularSection extends StatelessWidget {
  const PopularSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
      margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
      width: double.infinity,
      height: 229,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [PopularItems(), PopularItems(), PopularItems(), PopularItems()],
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  const FeatureSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
      margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
      width: double.infinity,
      height: 229,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [FeatureRestaurant(), FeatureRestaurant(), FeatureRestaurant(), FeatureRestaurant()],
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group17846Cad (814:6509)
      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
      width: 424.67,
      height: 98,
      child: ListView(
        scrollDirection: Axis.horizontal,

        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [Category(), Category(), Category(), Category(), Category(), Category()],
      ),
    );
  }
}

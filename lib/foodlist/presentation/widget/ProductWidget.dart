import 'package:flutter/material.dart';
import 'package:food/foodlist/model/Food.dart';

import '../../model/Category.dart';
import 'CustomFloatingButton.dart';

class ProductWidget extends StatelessWidget {
  Food food;
  ProductWidget({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group18162Tpd (814:6331)
      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
      width: 266,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0x3fd3d1d8),
            offset: Offset(15, 15),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              // autogroupychxYLH (W75RecmW9FaBPZBSn4YcHX)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
              padding: EdgeInsets.fromLTRB(11, 10, 10, 10),
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(food.image),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // group17787qKP (814:6336)
                    margin: EdgeInsets.fromLTRB(0, 0, 148, 0),
                    padding: EdgeInsets.fromLTRB(8.19, 9, 8.73, 4.07),
                    width: 69,
                    height: 28.07,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x33fe724c),
                          offset: Offset(0, 5.8474569321),
                          blurRadius: 11.6949138641,
                        ),
                      ],
                    ),
                    child: Container(
                      // group17546JTs (814:6341)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // end (814:6342)
                            // margin: EdgeInsets.fromLTRB(0, 0, 5.76, 0),
                            child: Text(
                              "${food.rating}",
                              style: TextStyle(
                                fontSize: 11.6949138641,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(child: Icon(Icons.star, size: 10, color: Colors.yellow)),
                          Container(
                            // V2Z (814:6343)
                            margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text(
                              '(${food.reviewCount})',
                              style: TextStyle(
                                fontSize: 8.1864395142,
                                height: 1.2575,
                                color: Color(0xff9796a1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      // group17481ccy (814:6345)
                      width: 28,
                      height: 28,
                      child: CustomFloatingButtonExtend(
                          child: Icon(Icons.favorite_outlined, color: Colors.white, size: 17),
                          onPressed: () {},
                          backgroundColor: food.isFavorite ? Colors.redAccent : Colors.grey)),
                ],
              ),
            ),
          ),
          Container(
            // group18136YmX (814:6349)
            margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroups9wfT7o (W75S4XFLax96g3UajDs9wf)
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // group17806nA5 (814:6350)
                        margin: EdgeInsets.fromLTRB(0, 0, 103, 2),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // mcdonaldshnq (814:6351)
                              // margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Text(
                                '${food.name}',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                                // group17801PvZ (814:6352)
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                width: 10,
                                height: 10,
                                child: Icon(Icons.check, size: 10, color: Colors.green)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group17546JTs (814:6341)
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // V2Z (814:6343)
                        margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Text(
                          'VND ${food.price}',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            height: 1.2575,
                            color: Color(0xff9796a1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Categories(categories: food.categories),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  List<Category> categories;
  Categories({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group178457Nh (814:6355)
      width: double.infinity,
      height: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: categories.map((e) {
            return Container(
              // group17803drq (814:6356)
              padding: EdgeInsets.fromLTRB(9.5, 6, 11.5, 0),
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff6f6f6),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                '${e.name}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.2575,
                  letterSpacing: -0.24,
                  color: Color(0xff898d9b),
                ),
              ),
            );
          }).toList()),
    );
  }
}

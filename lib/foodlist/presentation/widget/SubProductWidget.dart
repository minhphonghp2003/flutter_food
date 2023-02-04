import 'package:flutter/material.dart';
import 'package:food/foodlist/model/Food.dart';

import 'CustomFloatingButton.dart';

class SubProductWidget extends StatelessWidget {
  SubProductWidget({Key? key, required this.food}) : super(key: key);
  Food food;
  @override
  Widget build(BuildContext context) {
    return Container(
      // group17550bXX (814:6420)
      margin: EdgeInsets.fromLTRB(0, 0, 15.14, 0),
      padding: EdgeInsets.fromLTRB(10.09, 10.09, 10.09, 12.26),
      width: 154.43,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(food.image),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // autogroupsw3tsE9 (W75SoAgwsu8cTRTdPosW3T)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 94.11),
            width: double.infinity,
            height: 30.04,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    // group17547bR3 (814:6441)
                    margin: EdgeInsets.fromLTRB(0, 0, 47.44, 0),
                    width: 58.54,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CustomFloatingButtonExtend(
                      child: Text("${food.price}", style: TextStyle(color: Colors.black)),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                    )),
                Container(
                    // group17481NVf (814:6428)
                    width: 28.26,
                    height: 28.26,
                    child: CustomFloatingButton(
                      onPressed: () {},
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.favorite_outlined,
                        color: food.isFavorite ? Colors.redAccent : Colors.white,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            // group17548Ju7 (814:6432)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 6.06),
            padding: EdgeInsets.fromLTRB(7.07, 7.07, 7.21, 4.16),
            width: 70,
            height: 24.22,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(112),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33fe724c),
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Container(
              // group17546McV (814:6437)
              width: double.infinity,
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // end (814:6342)
                    // margin: EdgeInsets.fromLTRB(0, 0, 5.76, 0),
                    child: Text(
                      '${food.rating}',
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
                        fontWeight: FontWeight.w400,
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
            // group17277eV7 (814:6425)
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // salmonsalad14m (814:6426)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5.21),
                  child: Text(
                    '${food.name}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.2575,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  // bakedsalmonfishVEq (814:6427)
                  margin: EdgeInsets.fromLTRB(1.01, 0, 0, 0),
                  child: Text(
                    'Baked salmon fish',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      height: 1.2575,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

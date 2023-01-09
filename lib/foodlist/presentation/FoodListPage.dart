import 'package:flutter/material.dart';

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
                      Container(
                        // group18125mMb (814:6494)
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 32),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // group17484gjT (814:6495)
                              margin: EdgeInsets.fromLTRB(0, 0, 52.5, 0),
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                "assets/avatar.png",
                                width: 38,
                                height: 38,
                              ),
                            ),
                            Container(
                              // group18124nnV (814:6500)
                              margin: EdgeInsets.fromLTRB(0, 0, 50.5, 1),
                              width: 143,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group181387pm (814:6503)
                                    margin: EdgeInsets.fromLTRB(37, 0, 35.86, 3),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // deliverto3TX (814:6504)
                                          margin: EdgeInsets.fromLTRB(0, 0, 7.5, 0),
                                          child: Text(
                                            'Deliver to',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2230001177,
                                              color: Color(0xff8b9099),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // path857Kfw (814:6505)
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 2.68),
                                          width: 6.64,
                                          height: 3.32,
                                          child: Image.asset(
                                            "assets/avatar.png",
                                            width: 6.64,
                                            height: 3.32,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // prettyviewlaneixy (814:6501)
                                    '4102  Pretty View Lane ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2230000814,
                                      color: Color(0xfffe724c),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // maskgroupFi1 (814:6506)
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                "assets/avatar.png",
                                width: 38,
                                height: 38,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                      Container(
                        // searchek9 (814:6474)
                        margin: EdgeInsets.fromLTRB(0, 0, 25, 30),
                        width: double.infinity,
                        height: 51,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group18119mJy (814:6475)
                              margin: EdgeInsets.fromLTRB(0, 0, 18, 0),

                              padding: EdgeInsets.fromLTRB(18, 19, 18, 14),
                              width: 256,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffefefef)),
                                color: Color(0xfffbfcfc),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                //   // group18098DKP (814:6477)
                                width: 190,
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      //         // autogroupm4chkaD (W75VTvaR8WCxrVnpemm4Ch)
                                      margin: EdgeInsets.fromLTRB(0, 0, 12.5, 0),
                                      width: 13.5,
                                      height: 13.5,
                                      child: Image.asset(
                                        "assets/avatar.png",
                                        width: 13.5,
                                        height: 13.5,
                                      ),
                                    ),
                                    Text(
                                      // findforfoodorrestaurantrt9 (814:6480)
                                      'Find for food or restaurant...',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xff9aa0b3),
                                      ),
                                    ),
                                    Container(
                                      // group18097PNH (814:6481)
                                      padding: EdgeInsets.fromLTRB(16, 17, 16.72, 16),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(14),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x7fe9edf2),
                                            offset: Offset(0, 15),
                                            blurRadius: 15,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        // group17877t49 (814:6483)
                                        child: SizedBox(
                                          width: 18.28,
                                          height: 18,
                                          child: Image.asset(
                                            "assets/avatar.png",
                                            width: 18.28,
                                            height: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        // group17846Cad (814:6509)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        width: 424.67,
                        height: 98,
                        child: ListView(
                          scrollDirection: Axis.horizontal,

                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group17821uzq (814:6510)
                              margin: EdgeInsets.fromLTRB(0, 0, 14.64, 0),
                              padding: EdgeInsets.fromLTRB(4.51, 4.51, 4.51, 18.17),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfffe724c),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40fe724c),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroupAfs (814:6513)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 11.76),
                                    width: 49.56,
                                    height: 49.56,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 49.56,
                                      height: 49.56,
                                    ),
                                  ),
                                  Container(
                                    // burgerHEh (814:6512)
                                    margin: EdgeInsets.fromLTRB(0, 0, 1.13, 0),
                                    child: Text(
                                      'Burger',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17818P2q (814:6524)
                              margin: EdgeInsets.fromLTRB(0, 0, 14.64, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 18.17),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40d3d1d8),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroupSmo (814:6527)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 7.25),
                                    width: 58.57,
                                    height: 58.57,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 58.57,
                                      height: 58.57,
                                    ),
                                  ),
                                  Container(
                                    // donat9w7 (814:6526)
                                    margin: EdgeInsets.fromLTRB(0, 0, 1.13, 0),
                                    child: Text(
                                      'Donat',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        color: Color(0xff66666d),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17817rad (814:6517)
                              margin: EdgeInsets.fromLTRB(0, 0, 14.64, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 18.17),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40d3d1d8),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroupj8d (814:6520)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 7.25),
                                    width: 58.57,
                                    height: 58.57,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 58.57,
                                      height: 58.57,
                                    ),
                                  ),
                                  Container(
                                    // pizzaF6y (814:6519)
                                    margin: EdgeInsets.fromLTRB(0, 0, 2.25, 0),
                                    child: Text(
                                      'Pizza',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        color: Color(0xff66666d),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17820ADw (814:6531)
                              margin: EdgeInsets.fromLTRB(0, 0, 14.64, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40d3d1d8),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroup3oX (814:6534)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 7.43),
                                    width: 58.57,
                                    height: 58.57,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 58.57,
                                      height: 58.57,
                                    ),
                                  ),
                                  Container(
                                    // mexicanN57 (814:6533)
                                    margin: EdgeInsets.fromLTRB(0.11, 0, 0, 0),
                                    child: Text(
                                      'Mexican',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        color: Color(0xff66666d),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17822t3T (814:6538)
                              margin: EdgeInsets.fromLTRB(0, 0, 14.64, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 18.17),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40d3d1d8),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroupmN9 (814:6541)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 7.25),
                                    width: 58.57,
                                    height: 58.57,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 58.57,
                                      height: 58.57,
                                    ),
                                  ),
                                  Container(
                                    // asiangk1 (814:6540)
                                    margin: EdgeInsets.fromLTRB(0, 0, 2.25, 0),
                                    child: Text(
                                      'Asian',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        color: Color(0xff66666d),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17823QAD (814:6545)
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 23.17),
                              width: 58.57,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(26),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40d3d1d8),
                                    offset: Offset(0, 20),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // maskgroupVhT (814:6548)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.25),
                                    width: 58.57,
                                    height: 58.57,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 58.57,
                                      height: 58.57,
                                    ),
                                  ),
                                  Container(
                                    // asianDNZ (814:6547)
                                    margin: EdgeInsets.fromLTRB(0, 0, 2.25, 0),
                                    child: Text(
                                      'Asian',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xff66666d),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupd83bLCH (W75QAk4va9HNfubZz5d83b)
                        margin: EdgeInsets.fromLTRB(14, 0, 23.66, 10),
                        width: double.infinity,
                        height: 23,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                    width: 3.34,
                                    height: 6.68,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 3.34,
                                      height: 6.68,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupgbhsvZo (W75QNKZy1voG9HzRJiGbhs)
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                        width: double.infinity,
                        height: 229,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
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
                                  Container(
                                    // autogroupychxYLH (W75RecmW9FaBPZBSn4YcHX)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                    padding: EdgeInsets.fromLTRB(11, 10, 10, 10),
                                    width: double.infinity,
                                    height: 136,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "assets/avatar.png",
                                        ),
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
                                                  margin: EdgeInsets.fromLTRB(0, 0, 5.76, 0),
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                      fontSize: 11.6949138641,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.2575,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // path3389Aky (814:6344)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 2.44, 0),
                                                  width: 9.89,
                                                  height: 9.45,
                                                  child: Image.asset(
                                                    "assets/avatar.png",
                                                    width: 9.89,
                                                    height: 9.45,
                                                  ),
                                                ),
                                                Container(
                                                  // V2Z (814:6343)
                                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                                  child: Text(
                                                    '(25+)',
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
                                          // group17481ccy (814:6345)
                                          width: 28,
                                          height: 28,
                                          child: Image.asset(
                                            "assets/avatar.png",
                                            width: 28,
                                            height: 28,
                                          ),
                                        ),
                                      ],
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
                                                      margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                                      child: Text(
                                                        'McDonald’s',
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
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 10,
                                                        height: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group17812hgM (814:6365)
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // group175043VK (814:6368)
                                                      margin: EdgeInsets.fromLTRB(0, 1, 6.22, 0),
                                                      width: 13.78,
                                                      height: 11.43,
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 13.78,
                                                        height: 11.43,
                                                      ),
                                                    ),
                                                    Container(
                                                      // freedelivery9HT (814:6366)
                                                      margin: EdgeInsets.fromLTRB(0, 0, 21, 0),
                                                      child: Text(
                                                        'Free delivery',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.2575,
                                                          color: Color(0xff7d8391),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // group17503Tow (814:6377)
                                                      margin: EdgeInsets.fromLTRB(0, 1, 4.32, 0),
                                                      width: 10.68,
                                                      height: 12.09,
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 10.68,
                                                        height: 12.09,
                                                      ),
                                                    ),
                                                    Text(
                                                      // minsNR7 (814:6367)
                                                      '10-15 mins',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575,
                                                        color: Color(0xff7d8391),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group178457Nh (814:6355)
                                          width: double.infinity,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group17803drq (814:6356)
                                                padding: EdgeInsets.fromLTRB(9.5, 6, 11.5, 0),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Burger',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // group178046Ed (814:6359)
                                                padding: EdgeInsets.fromLTRB(10, 6, 11, 0),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Chicken',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // group17805YcR (814:6362)
                                                padding: EdgeInsets.fromLTRB(13, 6, 10, 0),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Fast Food',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group17813DyT (814:6313)
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
                                  Container(
                                    // autogroupmgdxWSm (W75QZpEpBFhU2GSShoMgDX)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                    padding: EdgeInsets.fromLTRB(11, 10, 10, 10),
                                    width: double.infinity,
                                    height: 136,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "assets/avatar.png",
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // group17787bUD (814:6318)
                                          margin: EdgeInsets.fromLTRB(0, 0, 148, 0),
                                          padding: EdgeInsets.fromLTRB(9.19, 9.19, 10, 3.88),
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
                                            // group17546fU5 (814:6323)
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // QgZ (814:6324)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 2.76, 0),
                                                  child: Text(
                                                    '4.7',
                                                    style: TextStyle(
                                                      fontSize: 11.6949138641,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.2575,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // path3389jTw (814:6326)
                                                  margin: EdgeInsets.fromLTRB(0, 0.17, 3.17, 0),
                                                  width: 9.89,
                                                  height: 9.45,
                                                  child: Image.asset(
                                                    "assets/avatar.png",
                                                    width: 9.89,
                                                    height: 9.45,
                                                  ),
                                                ),
                                                Container(
                                                  // eqo (814:6325)
                                                  margin: EdgeInsets.fromLTRB(0, 1.81, 0, 0),
                                                  child: Text(
                                                    '(99+)',
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
                                          // group17481nSD (814:6327)
                                          width: 28,
                                          height: 28,
                                          child: Image.asset(
                                            "assets/avatar.png",
                                            width: 28,
                                            height: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // group18137j6Z (814:6381)
                                    margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
                                    width: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupgxktFqb (W75R68hdUHdwzYXCjrgxKT)
                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // group17806bPf (814:6382)
                                                margin: EdgeInsets.fromLTRB(0, 0, 103, 1),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // starbuck8uP (814:6383)
                                                      margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                                                      child: Text(
                                                        'Starbuck ',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.2575,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // group17801Tgm (814:6384)
                                                      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                      width: 10,
                                                      height: 10,
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 10,
                                                        height: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group17812mhT (814:6397)
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // group17504vaM (814:6400)
                                                      margin: EdgeInsets.fromLTRB(0, 0, 4.22, 1.57),
                                                      width: 13.78,
                                                      height: 11.43,
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 13.78,
                                                        height: 11.43,
                                                      ),
                                                    ),
                                                    Container(
                                                      // freedelivery2NV (814:6398)
                                                      margin: EdgeInsets.fromLTRB(0, 0, 23, 1),
                                                      child: Text(
                                                        'Free delivery',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.2575,
                                                          color: Color(0xff7d8391),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // group175039CD (814:6409)
                                                      margin: EdgeInsets.fromLTRB(0, 0, 1.32, 0.91),
                                                      width: 10.68,
                                                      height: 12.09,
                                                      child: Image.asset(
                                                        "assets/avatar.png",
                                                        width: 10.68,
                                                        height: 12.09,
                                                      ),
                                                    ),
                                                    Text(
                                                      // minsSBK (814:6399)
                                                      '10-15 mins',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575,
                                                        color: Color(0xff7d8391),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group17845yww (814:6387)
                                          width: double.infinity,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group17803Kku (814:6388)
                                                padding: EdgeInsets.fromLTRB(9.5, 6, 11.5, 0),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Burger',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // group17804CJu (814:6391)
                                                padding: EdgeInsets.fromLTRB(10, 6, 11, 0),
                                                width: 60,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Chicken',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // group17805dv1 (814:6394)
                                                padding: EdgeInsets.fromLTRB(13, 6, 10, 0),
                                                width: 70,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff6f6f6),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Fast Food',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575,
                                                    letterSpacing: -0.24,
                                                    color: Color(0xff898d9b),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupcswhWyo (W75SXB9bPo1YY9xz9LcsWH)
                  width: double.infinity,
                  height: 249,
                  child: Stack(
                    children: [
                      Positioned(
                        // group179234kR (814:6418)
                        left: 25,
                        top: 0,
                        child: Container(
                          width: 325,
                          height: 249,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // popularitemsnwK (814:6472)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Text(
                                  'Popular Items',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575,
                                    color: Color(0xff323643),
                                  ),
                                ),
                              ),
                              Container(
                                // group17922KAZ (814:6419)
                                margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                width: double.infinity,
                                height: 216,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group17550qub (814:6420)
                                      margin: EdgeInsets.fromLTRB(0, 0, 15.14, 0),
                                      padding: EdgeInsets.fromLTRB(10.09, 10.09, 10.09, 12.26),
                                      width: 154.43,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            "assets/avatar.png",
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupsw3tJoB (W75SoAgwsu8cTRTdPosW3T)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 94.11),
                                            width: double.infinity,
                                            height: 30.04,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // group17547dqT (814:6441)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 47.44, 0),
                                                  width: 58.54,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // group17482N2M (814:6442)
                                                        left: 0,
                                                        top: 0,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 58.54,
                                                            height: 28.26,
                                                            child: Image.asset(
                                                              "assets/avatar.png",
                                                              width: 58.54,
                                                              height: 28.26,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // Ur5 (814:6444)
                                                        left: 7.0654296875,
                                                        top: 4.0375976562,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 42,
                                                            height: 26,
                                                            child: RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                  fontSize: 20.2499980927,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1499999388,
                                                                  color: Color(0xfffe724c),
                                                                ),
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$',
                                                                    style: TextStyle(
                                                                      fontSize: 9.801861763,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.2575,
                                                                      color: Color(0xfffe724c),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '5.50',
                                                                    style: TextStyle(
                                                                      fontSize: 20.2499980927,
                                                                      fontWeight: FontWeight.w600,
                                                                      height: 1.2575,
                                                                      color: Color(0xff111719),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // group174812uX (814:6428)
                                                  width: 28.26,
                                                  height: 28.26,
                                                  child: Image.asset(
                                                    "assets/avatar.png",
                                                    width: 28.26,
                                                    height: 28.26,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group17548NTb (814:6432)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 6.06),
                                            padding: EdgeInsets.fromLTRB(7.07, 7.07, 7.21, 4.16),
                                            width: 59.55,
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
                                              // group1754645X (814:6437)
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // hPP (814:6438)
                                                    margin: EdgeInsets.fromLTRB(0, 0, 4.78, 0),
                                                    child: Text(
                                                      '4.5',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.2575,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // path33892Am (814:6440)
                                                    margin: EdgeInsets.fromLTRB(0, 1.01, 2.97, 0),
                                                    width: 8.53,
                                                    height: 8.15,
                                                    child: Image.asset(
                                                      "assets/avatar.png",
                                                      width: 8.53,
                                                      height: 8.15,
                                                    ),
                                                  ),
                                                  Container(
                                                    // 8zV (814:6439)
                                                    margin: EdgeInsets.fromLTRB(0, 1.01, 0, 0),
                                                    child: Text(
                                                      '(25+)',
                                                      style: TextStyle(
                                                        fontSize: 7,
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
                                            // group17277UHf (814:6425)
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // salmonsaladRCu (814:6426)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5.21),
                                                  child: Text(
                                                    'Salmon Salad',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.2575,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // bakedsalmonfishiSu (814:6427)
                                                  margin: EdgeInsets.fromLTRB(1.01, 0, 0, 0),
                                                  child: Text(
                                                    'Baked salmon fish',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.2575,
                                                      color: Color(0xff9796a1),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group17921Rs7 (814:6445)
                                      padding: EdgeInsets.fromLTRB(10.09, 10.09, 10.09, 12.26),
                                      width: 154.43,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            "assets/avatar.png",
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupfenm6yF (W75TEa8HRrmpRLmdxmFENm)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 94.11),
                                            width: double.infinity,
                                            height: 30.04,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // group17547S1X (814:6462)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 47.44, 0),
                                                  width: 58.54,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // group17482Z69 (814:6463)
                                                        left: 0,
                                                        top: 0,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 58.54,
                                                            height: 28.26,
                                                            child: Image.asset(
                                                              "assets/avatar.png",
                                                              width: 58.54,
                                                              height: 28.26,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // fus (814:6465)
                                                        left: 7.0654296875,
                                                        top: 4.0375976562,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 42,
                                                            height: 26,
                                                            child: RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                  fontSize: 20.2499980927,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1499999388,
                                                                  color: Color(0xfffe724c),
                                                                ),
                                                                children: [
                                                                  TextSpan(
                                                                    text: '\$',
                                                                    style: TextStyle(
                                                                      fontSize: 9.801861763,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.2575,
                                                                      color: Color(0xfffe724c),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '8.25',
                                                                    style: TextStyle(
                                                                      fontSize: 20.2499980927,
                                                                      fontWeight: FontWeight.w600,
                                                                      height: 1.2575,
                                                                      color: Color(0xff111719),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // group17920YMP (814:6466)
                                                  width: 28.26,
                                                  height: 28.26,
                                                  child: Image.asset(
                                                    "assets/avatar.png",
                                                    width: 28.26,
                                                    height: 28.26,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group17548H45 (814:6453)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 6.06),
                                            padding: EdgeInsets.fromLTRB(7.07, 7.07, 7.21, 4.16),
                                            width: 59.55,
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
                                              // group17546xAD (814:6458)
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // uLM (814:6459)
                                                    margin: EdgeInsets.fromLTRB(0, 0, 4.78, 0),
                                                    child: Text(
                                                      '4.5',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.2575,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // path3389piD (814:6461)
                                                    margin: EdgeInsets.fromLTRB(0, 1.01, 2.97, 0),
                                                    width: 8.53,
                                                    height: 8.15,
                                                    child: Image.asset(
                                                      "assets/avatar.png",
                                                      width: 8.53,
                                                      height: 8.15,
                                                    ),
                                                  ),
                                                  Container(
                                                    // LgZ (814:6460)
                                                    margin: EdgeInsets.fromLTRB(0, 1.01, 0, 0),
                                                    child: Text(
                                                      '(25+)',
                                                      style: TextStyle(
                                                        fontSize: 7,
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
                                            // group17277sRb (814:6450)
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // salmonsaladEG9 (814:6451)
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5.21),
                                                  child: Text(
                                                    'Salmon Salad',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.2575,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // bakedsalmonfish9tu (814:6452)
                                                  margin: EdgeInsets.fromLTRB(1.01, 0, 0, 0),
                                                  child: Text(
                                                    'Baked salmon fish',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.2575,
                                                      color: Color(0xff9796a1),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // group18092spu (814:6552)
                        left: 0,
                        top: 59,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(23, 12, 16.98, 21),
                            width: 375,
                            height: 74,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "assets/avatar.png",
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group17444XeZ (814:6559)
                                  margin: EdgeInsets.fromLTRB(0, 10, 47, 0),
                                  width: 28,
                                  height: 27,
                                  child: Image.asset(
                                    "assets/avatar.png",
                                    width: 28,
                                    height: 27,
                                  ),
                                ),
                                Container(
                                  // group17440rB3 (814:6554)
                                  margin: EdgeInsets.fromLTRB(0, 13, 47, 0),
                                  width: 26,
                                  height: 28,
                                  child: Image.asset(
                                    "assets/avatar.png",
                                    width: 26,
                                    height: 28,
                                  ),
                                ),
                                Container(
                                  // autogroupgzpmBDK (W75TfUaTH4ivpnQgzTGZpM)
                                  margin: EdgeInsets.fromLTRB(0, 3, 47.44, 3.87),
                                  width: 32.56,
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group17445hxM (814:6572)
                                        left: 0,
                                        top: 10,
                                        child: Align(
                                          child: SizedBox(
                                            width: 22,
                                            height: 24.13,
                                            child: Image.asset(
                                              "assets/avatar.png",
                                              width: 22,
                                              height: 24.13,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group17308pXB (814:6574)
                                        left: 18,
                                        top: 0,
                                        child: Container(
                                          width: 14.56,
                                          height: 15.24,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // groupkQq (814:6575)
                                                left: 0,
                                                top: 0,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 14.56,
                                                    height: 14.53,
                                                    child: Image.asset(
                                                      "assets/avatar.png",
                                                      width: 14.56,
                                                      height: 14.53,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // ULq (814:6577)
                                                left: 4.1811523438,
                                                top: 2.2407226562,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 5,
                                                    height: 13,
                                                    child: Text(
                                                      '4',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575,
                                                        color: Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // group18073Nx1 (814:6578)
                                  margin: EdgeInsets.fromLTRB(0, 15, 47, 0),
                                  width: 26,
                                  height: 26,
                                  child: Image.asset(
                                    "assets/avatar.png",
                                    width: 26,
                                    height: 26,
                                  ),
                                ),
                                Container(
                                  // autogroup27l5uBF (W75TkokuSS6coCua5H27L5)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                  width: 34.02,
                                  height: 39,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group1744332Z (814:6563)
                                        left: 0,
                                        top: 11,
                                        child: Align(
                                          child: SizedBox(
                                            width: 28,
                                            height: 28,
                                            child: Image.asset(
                                              "assets/avatar.png",
                                              width: 28,
                                              height: 28,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group76kSm (814:6569)
                                        left: 19.4619140625,
                                        top: 0,
                                        child: Container(
                                          width: 14.55,
                                          height: 15.87,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // path23VQM (814:6570)
                                                left: 0,
                                                top: 0,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 14.55,
                                                    height: 14.51,
                                                    child: Image.asset(
                                                      "assets/avatar.png",
                                                      width: 14.55,
                                                      height: 14.51,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // byB (814:6571)
                                                left: 4.5380859375,
                                                top: 2.8657226562,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 5,
                                                    height: 13,
                                                    child: Text(
                                                      '6',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575,
                                                        color: Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}

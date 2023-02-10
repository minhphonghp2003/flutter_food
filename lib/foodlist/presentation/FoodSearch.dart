import 'package:flutter/material.dart';

class FoodSearch extends StatelessWidget {
  const FoodSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        // typeofpizzaWk3 (814:5553)
        left: 26,
        top: 228,
        child: Align(
          child: SizedBox(
            width: 122,
            height: 23,
            child: Text(
              '80 type of pizza',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w400,
                height: 1.2000000602,
                color: Color(0xff9796a1),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        // group17955BbH (814:5554)
        left: 27,
        top: 37,
        child: Align(
          child: SizedBox(
            width: 38,
            height: 38,
            child: Image.asset(
              "assets/avatar.png",
              width: 38,
              height: 38,
            ),
          ),
        ),
      ),
      Positioned(
        // group18048SGK (814:5557)
        left: 154,
        top: 0,
        child: Container(
          width: 319,
          height: 334.4,
          child: Stack(
            children: [
              Positioned(
                // maskgroup899 (814:5558)
                left: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: 319,
                    height: 319,
                    child: Image.asset(
                      "assets/avatar.png",
                      width: 319,
                      height: 319,
                    ),
                  ),
                ),
              ),
              Positioned(
                // maskgroup1ij (814:5563)
                left: 32,
                top: 106,
                child: Align(
                  child: SizedBox(
                    width: 108.71,
                    height: 138.4,
                    child: Image.asset(
                      "assets/avatar.png",
                      width: 108.71,
                      height: 138.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        // fastfoodJC3 (814:5566)
        left: 26,
        top: 112,
        child: Align(
          child: SizedBox(
            width: 123,
            height: 112,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 55.917881012,
                  fontWeight: FontWeight.w700,
                  height: 1.1000000205,
                  color: Color(0xff111719),
                ),
                children: [
                  TextSpan(
                    text: 'Fast\n',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      height: 1.1,
                      color: Color(0xff272d2f),
                    ),
                  ),
                  TextSpan(
                    text: 'Food',
                    style: TextStyle(
                      fontSize: 55.917881012,
                      fontWeight: FontWeight.w700,
                      height: 1.1000000205,
                      color: Color(0xfffe724c),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
          // group18049Foh (814:5453)
          left: 26,
          top: 306,
          child: Container(
              width: 323,
              height: 825.71,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  // group18101KHm (814:5534)
                  margin: EdgeInsets.fromLTRB(3.5, 0, 16.86, 21),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // group180471RV (814:5547)
                        margin: EdgeInsets.fromLTRB(0, 2, 157.86, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // shortbysyV (814:5548)
                              margin: EdgeInsets.fromLTRB(0, 0, 15.5, 1),
                              child: Text(
                                'Sort by:',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff111719),
                                ),
                              ),
                            ),
                            Container(
                              // group18046Kab (814:5549)
                              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // populardbH (814:5550)
                                    margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                    child: Text(
                                      'Popular',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xfffe724c),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // vector11JxK (814:5551)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    width: 4,
                                    height: 2,
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: 4,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group17859nMh (814:5535)
                        width: 18.28,
                        height: 18,
                        child: Image.asset(
                          "assets/avatar.png",
                          width: 18.28,
                          height: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    // group18044sP9 (814:5454)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Product(),
                        Product(),
                        Product(),
                      ],
                    ))
              ])))
    ]));
  }
}

class Product extends StatelessWidget {
  const Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group17953xvP (814:5455)
      padding: EdgeInsets.fromLTRB(0, 0, 0, 8.93),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(18.2142868042),
        boxShadow: [
          BoxShadow(
            color: Color(0x3fd3d1d8),
            offset: Offset(18.2142868042, 18.2142868042),
            blurRadius: 18.2142868042,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // autogroup2jz7QGb (W75LxRFimd3JQN1Dqu2JZ7)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12.14),
            width: double.infinity,
            height: 179.71,
            child: Stack(
              children: [
                Positioned(
                  // maskgrouphmV (814:5457)
                  left: 0,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: 323,
                      height: 165.14,
                      child: Image.asset(
                        "assets/avatar.png",
                        width: 323,
                        height: 165.14,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group17481Zoh (814:5460)
                  left: 276.8569335938,
                  top: 12.1428222656,
                  child: Align(
                    child: SizedBox(
                      width: 34,
                      height: 34,
                      child: Image.asset(
                        "assets/avatar.png",
                        width: 34,
                        height: 34,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group175471vb (814:5468)
                  left: 13,
                  top: 11.9997558594,
                  child: Container(
                    width: 72,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(121.4285736084),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // group17482v1y (814:5469)
                          left: 0,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 72,
                              height: 34,
                              child: Image.asset(
                                "assets/avatar.png",
                                width: 72,
                                height: 34,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // cfV (814:5471)
                          left: 10,
                          top: 8.0002441406,
                          child: Align(
                            child: SizedBox(
                              width: 52,
                              height: 23,
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1499023438,
                                    color: Color(0xfffe724c),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575,
                                        color: Color(0xfffe724c),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '10.35',
                                      style: TextStyle(
                                        fontSize: 18,
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
                ),
                Positioned(
                  // group17548ugX (814:5472)
                  left: 13.3569335938,
                  top: 150.5715332031,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8.5, 8.5, 8.71, 4.64),
                    width: 71.64,
                    height: 29.14,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x4cd3d1d8),
                          offset: Offset(5, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Container(
                      // group17546JCs (814:5477)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // RYP (814:5478)
                            margin: EdgeInsets.fromLTRB(0, 0, 6.59, 0),
                            child: Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 12.1428575516,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // path33897g7 (814:5480)
                            margin: EdgeInsets.fromLTRB(0, 1.21, 3.57, 0),
                            width: 10.27,
                            height: 9.81,
                            child: Image.asset(
                              "assets/avatar.png",
                              width: 10.27,
                              height: 9.81,
                            ),
                          ),
                          Container(
                            // QQK (814:5479)
                            margin: EdgeInsets.fromLTRB(0, 1.21, 0, 0),
                            child: Text(
                              '(25+)',
                              style: TextStyle(
                                fontSize: 8.5,
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
                ),
              ],
            ),
          ),
          Container(
            // group17950Ffq (814:5465)
            margin: EdgeInsets.fromLTRB(13.36, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // chickenhawaiianwYf (814:5466)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4.93),
                  child: Text(
                    'Chicken Hawaiian',
                    style: TextStyle(
                      fontSize: 18.2142868042,
                      fontWeight: FontWeight.w600,
                      height: 1.2575,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Text(
                  // chickencheeseandpineappleQSF (814:5467)
                  'Chicken, Cheese and pineapple',
                  style: TextStyle(
                    fontSize: 14.571428299,
                    fontWeight: FontWeight.w400,
                    height: 1.2575,
                    color: Color(0xff5b5b5e),
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

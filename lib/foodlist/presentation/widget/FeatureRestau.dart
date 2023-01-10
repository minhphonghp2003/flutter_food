import 'package:flutter/material.dart';

import 'CustomFloatingButton.dart';

class FeatureRestaurant extends StatelessWidget {
  const FeatureRestaurant({
    Key? key,
  }) : super(key: key);

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
          Container(
            // autogroupychxYLH (W75RecmW9FaBPZBSn4YcHX)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            padding: EdgeInsets.fromLTRB(11, 10, 10, 10),
            width: double.infinity,
            height: 136,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/bigproduct.png",
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
                          // margin: EdgeInsets.fromLTRB(0, 0, 5.76, 0),
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
                        Container(child: Icon(Icons.star, size: 10, color: Colors.yellow)),
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
                    child: CustomFloatingButtonExtend(
                        child: Icon(Icons.favorite_outlined, color: Colors.white, size: 17), onPressed: () {}, backgroundColor: Colors.redAccent)),
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
                              // margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
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
                                child: Icon(Icons.check, size: 10, color: Colors.green)),
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
                                child: Icon(Icons.delivery_dining, color: Colors.red[600], size: 18)),
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
                                child: Icon(Icons.timelapse, color: Colors.red[600], size: 15)),
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
                      // SizedBox(
                      //   width: 8,
                      // ),
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
                      // SizedBox(
                      //   width: 8,
                      // ),
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
    );
  }
}

import 'package:flutter/material.dart';

import 'CustomFloatingButton.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group18125mMb (814:6494)
      margin: EdgeInsets.fromLTRB(1, 0, 0, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              // group17484gjT (814:6495)
              // margin: EdgeInsets.fromLTRB(0, 0, 52.5, 0),
              width: 38,
              height: 38,
              child: CustomFloatingButtonExtend(backgroundColor: Colors.white, child: Icon(Icons.menu, color: Colors.black), onPressed: () {})),
          Container(
            // group18124nnV (814:6500)
            // margin: EdgeInsets.fromLTRB(0, 0, 50.5, 1),
            width: 143,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        // deliverto3TX (814:6504)
                        // margin: EdgeInsets.fromLTRB(0, 0, 7.5, 0),
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
                    ),
                    GestureDetector(
                      onTap: () {
                        print("tap");
                      },
                      child: Icon(
                        Icons.arrow_downward_sharp,
                        size: 15,
                      ),
                    )
                  ],
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
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
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
    );
  }
}

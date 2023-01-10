import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
    );
  }
}

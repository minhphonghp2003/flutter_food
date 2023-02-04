import 'package:flutter/material.dart';

import 'CustomFloatingButton.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      child: Icon(Icons.search, color: Colors.black45)),
                  Text(
                    // findforfoodorrestaurantrt9 (814:6480)
                    'Find for food or restaurant...',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.2575,
                      color: Color(0xff9aa0b3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // group18097PNH (814:6481)
            // padding: EdgeInsets.fromLTRB(16, 17, 16.72, 16),
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
              child: CustomFloatingButton(child: Icon(Icons.tune, color: Colors.red), backgroundColor: Colors.white, onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}

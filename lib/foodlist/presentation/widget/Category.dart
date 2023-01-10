import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              "assets/category.png",
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
    );
  }
}

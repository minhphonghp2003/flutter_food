import 'package:flutter/material.dart';
import 'package:food/foodlist/model/Category.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key, required this.category}) : super(key: key);
  Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
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
              // spreadRadius: 5.0,
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
              child: CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: category.imageUrl != null
                    ? NetworkImage(category.imageUrl!)
                    : NetworkImage(
                        "https://thumbs.dreamstime.com/b/vegetarian-com.minh.food-plate-editable-vector-illustration-isolated-dark-grey-background-medical-healthcare-dietary-poster-134019735.jpg",
                      ),
              ),
            ),
            Container(
              // burgerHEh (814:6512)
              margin: EdgeInsets.fromLTRB(0, 0, 1.13, 0),
              child: Text(
                '${category.name}',
                overflow: TextOverflow.ellipsis,
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
    );
  }
}

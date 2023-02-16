import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/presentation/AddReview.dart';

import '../bloc/FoodState.dart';
import '../model/Food.dart';

class Reviews extends StatelessWidget {
  Reviews({Key? key, required this.food, required this.productId}) : super(key: key);
  String productId;
  Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (BuildContext context) => FoodBloc()..add(FoodReviewFetched(productId: productId)),
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 37, 0, 0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ListView(
            children: [
              Container(
                  // autogroupjzh3p9R (W754etRDNP5vyhBVy7jZH3)
                  width: double.infinity, //
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Reviews",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  )),
              Container(
                // group17700MBH (814:3972)
                margin: EdgeInsets.fromLTRB(0, 20, 25, 35),
                padding: EdgeInsets.fromLTRB(13, 10, 153, 11),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffeeeeee)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3fe8e8e8),
                      offset: Offset(15, 20),
                      blurRadius: 22.5,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // maskgroupwfH (814:3975)
                      margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        "assets/avatar.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AddReview(food: food),
                          ),
                        );
                      },
                      child: Container(
                        // writeyourreview2gj (814:3974)
                        margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                        child: Text(
                          'Write your review...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.2575,
                            color: Color(0xff111719),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
                if (state is FoodStateReviewFetchedSuccess) {
                  return Column(
                      children: state.reviews.map((r) {
                    return Container(
                      // group17775T79 (814:3930)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 44),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 53.56,
                                height: 48,
                                child: Align(
                                  child: SizedBox(
                                    width: 48.75,
                                    height: 48,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(113.9493560791),
                                      child: Image.asset(
                                        "assets/avatar.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    // width: 88,
                                    height: 19,
                                    child: Row(
                                      children: [
                                        Text(
                                          '${r.name} \n\n',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "${r.rating}",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // PD5 (814:3938)
                                    // margin: EdgeInsets.fromLTRB(0, 0, 129, 16),
                                    child: Text(
                                      '${r.dateCreated.toString().split(" ")[0]}',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xffb3b3b3),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            // width: 326,
                            // height: 160,
                            child: Container(
                              // beenalifesaverforkeepingoursan (814:3939)
                              // ),
                              child: Text(
                                "${r.content}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4069999695,
                                  color: Color(0xff7e7c91),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList());
                }
                return Container();
              }),
            ],
          ),
        ),
      )),
    );
  }
}

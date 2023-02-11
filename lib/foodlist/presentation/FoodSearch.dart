import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/presentation/FoodDetail.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';

import '../model/Category.dart';
import '../model/Food.dart';

class FoodSearch extends StatefulWidget {
  FoodSearch({Key? key, required this.searchType, this.category = null, this.sortDirect = "desc", this.sort = "createdAt"}) : super(key: key);
  Category? category;
  String sort;
  String sortDirect;
  String searchType;
  @override
  State<FoodSearch> createState() => _FoodSearchState();
}

class _FoodSearchState extends State<FoodSearch> {
  List<Food> foods = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
            backgroundColor: Colors.white),
        body: BlocProvider(
            create: (BuildContext context) => FoodBloc()
              ..add(FoodProductByCategoryFetched(page: 1, size: 8, sort: widget.sort, sortDirect: widget.sortDirect, category: widget.category)),
            child: BlocConsumer<FoodBloc, FoodState>(listener: (context, state) {
              // do stuff here based on BlocA's state
            }, builder: (context, state) {
              if (state is FoodStateProductFetchedSuccess) {
                foods = state.food;
              }
              return Container(
                // homeNdp (11:124)
                padding: EdgeInsets.fromLTRB(24, 70, 0, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // letscookingpki (47:896)
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 38),
                      child: Text(
                        '${widget.searchType}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.0240000004,
                          color: Color(0xff525252),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupdvinJvn (6aLGWpcvBJad5rSsrnDviN)
                      margin: EdgeInsets.fromLTRB(5, 0, 18, 11),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // categorydy4 (14:21)
                            child: Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                letterSpacing: 0.0200000003,
                                color: Color(0xff525252),
                              ),
                            ),
                          ),
                          Text(
                            // viewallMPG (99:839)
                            'View all',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.0140000002,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // menucategoryhCE (47:790)
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 58),
                      height: 35,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            // group70DwG (99:831)
                            width: 116,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Trending',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: 0.0140000002,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Container(
                            // group716EN (99:832)
                            width: 116,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              border: Border.all(color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: 0.0140000002,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Container(
                            // group72xnN (99:833)
                            width: 116,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'High rating',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: 0.0140000002,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group68ANe (98:794)
                      width: 380,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: foods.map((f) {
                          return Column(
                            children: [
                              Product(food: f),
                              SizedBox(
                                height: 24,
                              ),
                            ],
                          );
                        }).toList(),
                        // children: [
                        //   Product(),
                        //
                        //   // Product(),
                        //   // SizedBox(
                        //   //   height: 24,
                        //   // ),
                        //   // Product(),
                        // ],
                      ),
                    ),
                  ],
                ),
              );
            })
            // child:
            ));
  }
}

class Product extends StatelessWidget {
  Product({Key? key, required this.food}) : super(key: key);
  Food food;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FoodDetail(food: food),
          ),
        );
      },
      child: Container(
        // group17953xvP (814:5455)
        padding: EdgeInsets.fromLTRB(0, 0, 0, 8.93),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            food.image,
                            fit: BoxFit.fill,
                            width: 323,
                            height: 165.14,
                          ),
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
                        child: CustomFloatingButtonExtend(
                          backgroundColor: Colors.white,
                          child: Text("${food.price}", style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                        )),
                  ),
                  Positioned(
                    // group17548ugX (814:5472)
                    left: 13.3569335938,
                    top: 150.5715332031,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8.5, 8.5, 8.71, 4.64),
                      width: 80,
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
                              // margin: EdgeInsets.fromLTRB(0, 0, 6.59, 0),
                              child: Text(
                                '${food.rating}',
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
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                )),
                            Container(
                              // QQK (814:5479)
                              margin: EdgeInsets.fromLTRB(0, 1.21, 0, 0),
                              child: Text(
                                '(${food.reviewCount})',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
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
                      '${food.name}',
                      style: TextStyle(
                        fontSize: 18.2142868042,
                        fontWeight: FontWeight.w600,
                        height: 1.2575,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Row(
                    children: food.categories.map((c) {
                      return Text(
                        // chickencheeseandpineappleQSF (814:5467)
                        '${c.name}  ',
                        style: TextStyle(
                          fontSize: 14.571428299,
                          fontWeight: FontWeight.w400,
                          height: 1.2575,
                          color: Color(0xff5b5b5e),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

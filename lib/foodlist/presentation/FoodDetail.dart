import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/app.dart';
import 'package:food/authenticate/presentation/LoginPage.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/presentation/ReviewPage.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';

import '../bloc/FoodEvent.dart';
import '../bloc/FoodState.dart';
import '../model/Food.dart';

class FoodDetail extends StatefulWidget {
  Food food;
  FoodDetail({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  String description = "";
  List<dynamic> images = [];
  int quanity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: BlocProvider(
            create: (BuildContext context) => FoodBloc()..add(FoodDescriptionAndImageFetched(id: widget.food.id)),
            child: Container(
              // fooddetails9N3 (814:6237)
              padding: EdgeInsets.fromLTRB(17, 27, 23.4, 32),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: ListView(
                children: [
                  Container(
                    // group18163ey1 (814:6277)
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 12),
                    width: 329.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup1d4uDPq (W75PMgb1EsggSeWjPf1d4u)
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
                                    if (state is FoodStateDescriptionAndImgFetchedSuccess) {
                                      images = state.imgAndDes.imageLinks;
                                    }
                                    //margin: EdgeInsets.all(10), child: Image.network(images[pagePosition]));
                                    return Container(
                                        // autogroupevjpvZ9 (W75PEmcrgnd2CP49mVeVjP)
                                        margin: EdgeInsets.fromLTRB(3, 0, 3.6, 22),
                                        padding: EdgeInsets.fromLTRB(8, 10, 16, 10),
                                        width: double.infinity,
                                        height: 206,
                                        child: CarouselSlider(
                                          items: images.map((i) {
                                            return Container(
                                              margin: EdgeInsets.all(6.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: NetworkImage("${i}"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          options: (CarouselOptions(
                                            height: 200.0,
                                            enlargeCenterPage: true,
                                            autoPlay: true,
                                            aspectRatio: 16 / 9,
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enableInfiniteScroll: true,
                                            autoPlayAnimationDuration: Duration(milliseconds: 1000),
                                            viewportFraction: 0.8,
                                          )),
                                        ));
                                    // });
                                  })),
                              Container(
                                // groundbeeftacosJi7 (814:6281)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                                child: Text(
                                  '${widget.food.name}',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1500000272,
                                    letterSpacing: -0.56,
                                    color: Color(0xff323643),
                                  ),
                                ),
                              ),
                              Container(
                                // group18134iWw (814:6282)
                                margin: EdgeInsets.fromLTRB(0, 0, 172.29, 0),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // signs1pps (814:6283)
                                        margin: EdgeInsets.fromLTRB(0, 0, 8.53, 0),
                                        width: 17.78,
                                        height: 17,
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        )),
                                    Container(
                                      // group17845JV9 (814:6287)
                                      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // R3y (814:6288)
                                            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                            child: Text(
                                              '${widget.food.rating.toStringAsFixed(1)}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575,
                                                color: Color(0xff111719),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // h1V (814:6289)
                                            margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                            child: Text(
                                              '${widget.food.reviewCount}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575,
                                                color: Color(0xff9796a1),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Reviews(
                                                    productId: widget.food.id,
                                                    food: widget.food,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              // seereviewvew (814:6290)
                                              'See Review',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575,
                                                decoration: TextDecoration.underline,
                                                color: Color(0xfffe724c),
                                                decorationColor: Color(0xfffe724c),
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
                          // group18135MkF (814:6291)
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // FKq (814:6292)
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 35.1428527832,
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                      color: Color(0xfffe724c),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'vnd',
                                        style: TextStyle(
                                          fontSize: 17.0106372833,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2575,
                                          color: Color(0xfffe724c),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${widget.food.price}',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575,
                                          color: Color(0xfffe724c),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group17842K6j (814:6293)
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // group1784132j (814:6299)
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          // width: 3,
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 0, 8.7, 0),
                                      width: 30.6,
                                      height: 30.6,
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              quanity == 1 ? 1 : quanity--;
                                            });
                                          },
                                          child: Icon(Icons.remove)),
                                    ),
                                    Container(
                                      // 84B (814:6303)
                                      margin: EdgeInsets.fromLTRB(0, 0, 13, 1.04),
                                      child: Text(
                                        '${quanity}',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group17840Pko (814:6294)
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          // width: 3,
                                          color: Colors.red,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      width: 30.6,
                                      height: 30.6,
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              quanity++;
                                            });
                                          },
                                          child: Icon(Icons.add, color: Colors.redAccent)),
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
                      // brownthebeefbetterleangroundbe (814:6238)
                      margin: EdgeInsets.fromLTRB(0, 0, 14.6, 47),
                      constraints: BoxConstraints(
                        maxWidth: 310,
                      ),
                      child: BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
                        if (state is FoodStateDescriptionAndImgFetchedSuccess) {
                          description = state.imgAndDes.description;
                          images = state.imgAndDes.imageLinks;
                        }
                        return Text(
                          description != null ? description : "",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.5700000763,
                            color: Color(0xff858891),
                          ),
                        );
                      })),
                  BlocListener<FoodBloc, FoodState>(
                    listener: (context, state) {
                      if (state is FoodStateAddToCartFailure) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }
                      if (state is FoodStateAddToCartSuccess) {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => FoodApp()), (Route<dynamic> route) => false);
                      }
                    },
                    child: Builder(builder: (context) {
                      return CustomFloatingButtonExtend(
                          child: Row(
                            children: [
                              Icon(
                                Icons.card_travel,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Add to cart")
                            ],
                          ),
                          backgroundColor: Colors.redAccent,
                          onPressed: () {
                            context.read<FoodBloc>().add(FoodAddToCart(productId: widget.food.id, quanity: quanity));
                          });
                    }),
                  ),
                ],
              ),
            )));
  }
}

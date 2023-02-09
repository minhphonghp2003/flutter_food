import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/model/Addon.dart';
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
  List<Addon> addons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (BuildContext context) => FoodBloc()
              ..add(FoodDescriptionAndImageFetched(id: widget.food.id))
              ..add(FoodAddonFetched()),
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
                                child: Container(
                                  // autogroupevjpvZ9 (W75PEmcrgnd2CP49mVeVjP)
                                  margin: EdgeInsets.fromLTRB(3, 0, 3.6, 22),
                                  padding: EdgeInsets.fromLTRB(8, 10, 16, 10),
                                  width: double.infinity,
                                  height: 206,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/bigproduct.png',
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          // group18071y1d (814:6308)
                                          margin: EdgeInsets.fromLTRB(0, 0, 233, 0),
                                          width: 48,
                                          height: 48,
                                          child: CustomFloatingButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.keyboard_backspace_rounded,
                                              color: Colors.black,
                                            ),
                                            backgroundColor: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
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
                                              '${widget.food.rating}',
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
                                            onTap: () {},
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
                                      child: Icon(Icons.remove),
                                    ),
                                    Container(
                                      // 84B (814:6303)
                                      margin: EdgeInsets.fromLTRB(0, 0, 13, 1.04),
                                      child: Text(
                                        '02',
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
                                      child: Icon(Icons.add, color: Colors.redAccent),
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
                        String? description;
                        if (state is FoodStateDescriptionAndImgFetchedSuccess) {
                          description = state.imgAndDes.description;
                        }
                        return Text(
                          description != null ? description : "Description",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.5700000763,
                            color: Color(0xff858891),
                          ),
                        );
                      })),
                  Container(
                    // choiceofaddonFwR (814:6270)
                    margin: EdgeInsets.fromLTRB(0, 0, 197.6, 5),
                    child: Text(
                      'Choice of Add On',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.2575,
                        color: Color(0xff323643),
                      ),
                    ),
                  ),
                  BlocConsumer<FoodBloc, FoodState>(listener: (context, state) {
                    print("listem $state");
                  }, builder: (context, state) {
                    if (state is FoodStateAddonFetchedSuccess) {
                      addons = state.addons;
                    }
                    return Column(
                        children: addons != null
                            ? addons.map((addon) {
                                return Container(
                                  // group17854Bxo (814:6260)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0.35, 10),
                                  width: double.infinity,
                                  height: 39.17,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          // group17851Csu (814:6265)
                                          margin: EdgeInsets.fromLTRB(0, 0, 157, 0),
                                          height: double.infinity,
                                          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                            Container(
                                              // maskgroup5B1 (814:6267)
                                              margin: EdgeInsets.fromLTRB(0, 0, 9.83, 0),
                                              width: 39.17,
                                              height: 39.17,
                                              child: Image.network(
                                                addon.image,
                                                width: 39.17,
                                                height: 39.17,
                                              ),
                                            ),
                                            Container(
                                              // masroomm3q (814:6266)
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1.17),
                                              child: Text(
                                                '${addon.name}',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ])),
                                      Row(
                                        children: [
                                          Container(
                                            // 3n3 (814:6264)
                                            margin: EdgeInsets.fromLTRB(0, 2.83, 7, 0),
                                            child: Text(
                                              '+${addon.price}',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }).toList()
                            : [Container()]);
                  }),
                  Container(
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
                            // context.read<FoodBloc>().add(FoodAddonFetched());
                          });
                    }),
                  )
                ],
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';

import '../model/Cart.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  List<Cart> carts = [];
  int discount = 0;
  int subTotal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (BuildContext context) => FoodBloc()..add(FoodCartGotten()),
      child: Container(
        // cartZ3Z (814:5362)
        padding: EdgeInsets.fromLTRB(22, 37, 22, 31),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 1.2575,
                  color: Color(0xff111719),
                ),
              ),
            ),
            BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
              // return widget here based on BlocA's state
              if (state is FoodStateGetCartSuccess) {
                carts = state.carts;
              }
              return Column(
                  children: carts.map((c) {
                return Product(cart: c);
              }).toList());
            }),
            Discount(),
            BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
              // return widget here based on BlocA's state

              subTotal = 0;
              if (state is FoodStateGetCartSuccess) {
                state.carts.map((c) {
                  subTotal += int.parse(c.price) * c.quanity;
                });
              }

              return Price(discount: discount, subTotal: subTotal);
            }),
            Container(
              // group17532btX (814:5366)
              margin: EdgeInsets.fromLTRB(42, 0, 41, 0),
              width: double.infinity,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.5),
              ),
              child: Container(
                // group17531hwZ (814:5367)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.5),
                ),
                child: Container(
                  // group17580Su9 (814:5368)
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfffe724c),
                    borderRadius: BorderRadius.circular(28.5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40fe724c),
                        offset: Offset(0, 8),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'CHECKOUT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.2575,
                        letterSpacing: 1.2,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Price extends StatelessWidget {
  Price({Key? key, required this.subTotal, required this.discount}) : super(key: key);
  int subTotal;
  int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Text(
              "Subtotal",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Text(
              "${subTotal} vnd",
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Text(
              "Total",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Text(
              "${subTotal - discount} vnd",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group17883qQw (814:5391)
      margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
      padding: EdgeInsets.fromLTRB(17, 8, 10.48, 7.87),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee)),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // promocodeUio (814:5393)
            margin: EdgeInsets.fromLTRB(0, 7.87, 136, 0),
            child: Text(
              'Promo Code',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 1.2575,
                color: Color(0xffbebebe),
              ),
            ),
          ),
          Container(
            // group17532mxo (814:5394)
            width: 96.52,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.5),
            ),
            child: Container(
              // group17531WQb (814:5395)
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.5),
              ),
              child: Container(
                // group175803vK (814:5396)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.5),
                ),
                child: Container(
                  // group17584bS3 (814:5397)
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfffe724c),
                    borderRadius: BorderRadius.circular(28.5),
                  ),
                  child: Center(
                    child: Text(
                      'Apply',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product extends StatefulWidget {
  Product({Key? key, required this.cart}) : super(key: key);
  Cart cart;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // group18158xtK (814:5400)
      margin: EdgeInsets.fromLTRB(0, 30, 3, 25.09),
      height: 83.91,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // maskgroupoe3 (814:5401)
            margin: EdgeInsets.fromLTRB(0, 0, 21, 1.91),
            width: 82,
            height: 82,
            child: Image.network(
              widget.cart.image,
              width: 82,
              height: 82,
            ),
          ),
          Container(
            // autogroupliqzDhm (W75Ke87WqHVzvC8NDVLiQZ)
            margin: EdgeInsets.fromLTRB(0, 6, 19, 3.91),
            width: 117,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // group17277FeT (814:5409)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // rednhotpizzahFZ (814:5410)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: Text(
                          widget.cart.name,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.2575,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  // T8F (814:5413)
                  '${widget.cart.price}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.2575,
                    color: Color(0xfffe724c),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // autogroupee81mud (W75KnNNmviQaf4iAcMeE81)
            width: 89,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    // group17248hoH (814:5405)
                    margin: EdgeInsets.fromLTRB(0, 0, 6.52, 33.64),
                    width: 8.39,
                    height: 8.39,
                    child: GestureDetector(
                      onTap: () {
                        print("delete");
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.redAccent,
                        size: 15,
                      ),
                    )),
                Container(
                  // group17842acB (814:5414)
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Container(
                    // PZd (814:5424)
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.redAccent,
                          size: 15,
                        ),
                        Text(
                          '${widget.cart.quanity}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.2575,
                            color: Color(0xff000000),
                          ),
                        ),
                        Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 15,
                        ),
                      ],
                    ),
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

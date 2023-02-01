import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:food/authenticate/presentation/WelcomePage.dart';
import 'package:food/cart/CartPage.dart';
import 'package:food/favorite/FavoritePage.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/presentation/FoodListPage.dart';
import 'package:food/foodlist/presentation/widget/AppbarTitle.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';
import 'package:food/foodlist/presentation/widget/Drawer.dart';

import '../address/address.dart';
import '../notification/NotificationPage.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key, this.userProfile}) : super(key: key);

  final User? userProfile;

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int _selectedIndex = 0;
  void _onItemTapped(int indx) {
    setState(() {
      _selectedIndex = indx;
    });
  }

  List<Widget> _page = [FoodListPage(), Delivery(), CartPage(), FavoritePage(), NotificationPage()];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => FoodBloc()
            ..add(FoodAllCategoriesFetched())
            ..add(FoodProductFetched(page: 1, size: 6))
            ..add(FoodProductFetched(page: 1, size: 5, sort: "price")),
        ),
      ],
      child: Scaffold(
        appBar: _selectedIndex == 0
            ? AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: widget.userProfile != null
                    ? [
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
                      ]
                    : null,
                title: widget.userProfile != null ? AppbarTitle() : null)
            : null,
        drawer: widget.userProfile != null
            ? Drawer(
                child: CustomDrawer(
                userProfile: widget.userProfile,
              ))
            : CustomFloatingButtonExtend(
                child: Row(
                  children: [
                    Icon(Icons.power_settings_new_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Login"),
                  ],
                ),
                backgroundColor: Colors.redAccent,
                onPressed: () async {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelcomePage()), (Route<dynamic> route) => false);
                }),
        body: _page[_selectedIndex],
        bottomNavigationBar: widget.userProfile != null
            ? BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.redAccent,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    label: 'Address',
                  ),
                  BottomNavigationBarItem(
                    icon: new Stack(children: <Widget>[
                      new Icon(Icons.shopping_cart, color: Colors.redAccent),
                      new Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1, size: 10.0, color: Colors.yellow),
                      )
                    ]),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: new Stack(children: <Widget>[
                      new Icon(Icons.notifications, color: Colors.grey),
                      new Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1, size: 10.0, color: Colors.yellow),
                      )
                    ]),
                    label: 'Notif',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              )
            : null,
      ),
    );
  }
}

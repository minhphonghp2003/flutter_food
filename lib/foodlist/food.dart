import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/foodlist/presentation/FoodListPage.dart';
import 'package:food/foodlist/presentation/widget/AppbarTitle.dart';
import 'package:food/foodlist/presentation/widget/Drawer.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  bool appBar = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc()..add(AuthLoginCookieChecked()),
        ),
      ],
      child: Scaffold(
        appBar: appBar
            ? AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
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
                ],
                title: AppbarTitle())
            : null,
        drawer: Drawer(child: CustomDrawer()),
        body: FoodListPage(),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: 0,
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              // welcomes4V (814:7008)
              padding: EdgeInsets.all(20),
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/authcover.jpeg")),
              ),
            ),
            Container(
              // welcomes4V (814:7008)
              padding: EdgeInsets.all(20),
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                // image: DecorationImage(
                //     fit: BoxFit.cover, image: AssetImage("assets/authcover.jpeg")),
                gradient: LinearGradient(
                  begin: Alignment(-0.096, -1),
                  end: Alignment(-0.123, 0.808),
                  colors: <Color>[Color(0x00494d62), Color(0xff191b2e)],
                  stops: <double>[0, 1],
                ),
              ),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group179632bb (814:7011)
                    margin: EdgeInsets.fromLTRB(264, 0, 0, 50),
                    width: 55,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(27.4059333801),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3fd3d1d8),
                          offset: Offset(17.8734359741, 17.8734359741),
                          blurRadius: 17.8734359741,
                        ),
                      ],
                    ),
                    child: FloatingActionButton.extended(
                      label: Text(
                        'Skip',
                        style: TextStyle(color: Colors.red),
                      ), // <-- Text
                      backgroundColor: Colors.white,

                      onPressed: () {},
                    ),
                  ),
                  Container(
                    // group18122okm (814:7036)
                    margin: EdgeInsets.fromLTRB(0, 0, 49, 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // welcometofoodhubXgm (814:7037)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                          constraints: BoxConstraints(
                            maxWidth: 271,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 54,
                                fontWeight: FontWeight.w700,
                                height: 1.2799999096,
                                color: Color(0xff111719),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Welcome to\n',
                                  style: TextStyle(
                                    fontSize: 53,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2799999309,
                                    color: Color(0xff111719),
                                  ),
                                ),
                                TextSpan(
                                  text: 'FoodHub',
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2799999661,
                                    color: Color(0xfffe724c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // yourfavouritefoodsdeliveredfas (814:7038)
                          margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                          constraints: BoxConstraints(
                            maxWidth: 259,
                          ),
                          child: Text(
                            'Your favourite foods delivered fast at your door.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group18121byT (814:7039)
                    margin: EdgeInsets.fromLTRB(16, 0, 11, 13),
                    width: double.infinity,
                    height: 21,
                    child: Stack(
                      children: [
                        Positioned(
                          // signinwithvF3 (814:7040)
                          left: 105.5,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 77,
                              height: 21,
                              child: Text(
                                ' sign in with',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2575,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group17868QR7 (814:7041)
                          left: 0,
                          top: 8,
                          child: Container(
                            width: 293,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupz71buNh (W75naGQG1duyjBruMLz71b)
                    margin: EdgeInsets.fromLTRB(2, 0, 0, 23),
                    width: double.infinity,
                    height: 54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15.38, 0),
                          // padding: EdgeInsets.fromLTRB(12, 13, 36, 12.38),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(27.4059333801),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3fd3d1d8),
                                offset: Offset(17.8734359741, 17.8734359741),
                                blurRadius: 17.8734359741,
                              ),
                            ],
                          ),
                          child: FloatingActionButton.extended(
                            label: Text('Facebook',
                                style: TextStyle(color: Colors.black)),
                            // <-- Text
                            backgroundColor: Colors.white,
                            icon: Icon(
                              // <-- Icon
                              Icons.facebook_rounded,
                              size: 24.0,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15.38, 0),
                          // padding: EdgeInsets.fromLTRB(12, 13, 36, 12.38),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(27.4059333801),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3fd3d1d8),
                                offset: Offset(17.8734359741, 17.8734359741),
                                blurRadius: 17.8734359741,
                              ),
                            ],
                          ),
                          child: FloatingActionButton.extended(
                            label: Text(
                              'Google',
                              style: TextStyle(color: Colors.black),
                            ), // <-- Text
                            backgroundColor: Colors.white,
                            icon: Icon(
                              // <-- Icon
                              // FontAwesomeIcons.gamepad,
                              Icons.g_mobiledata_outlined,
                              size: 40.0,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton.extended(
                    label: Text(
                      'Sign up with email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.2575,
                        color: Color(0xfffefefe),
                      ),
                    ),
                    backgroundColor: Color(0x35ffffff),
                    onPressed: () {},
                  ),
                  Container(
                    // group18120uAq (814:7014)
                    margin: EdgeInsets.fromLTRB(46, 30, 40, 23),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // alreadyhaveanaccount329 (814:7015)
                          margin: EdgeInsets.fromLTRB(0, 1, 16, 0),
                          child: Text(
                            'Already have an account? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.2575,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              color: Color(0xffffffff),
                              decorationColor: Color(0xffffffff),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

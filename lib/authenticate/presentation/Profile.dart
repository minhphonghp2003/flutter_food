import 'package:flutter/material.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.id}) : super(key: key);
  final String? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Page());
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // profileJCS (814:5123)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: ListView(
          children: [
            Container(
              // autogroup8k3bCHp (W75GMPFzzSekCmSE9U8k3B)
              width: 378,
              height: 343,
              child: Stack(
                children: [
                  Positioned(
                    // groupXaz (814:5125)
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: 378,
                        height: 285,
                        child: Image.asset(
                          'assets/profileback.png',
                          alignment: Alignment.bottomRight,
                          width: 378,
                          height: 285,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle144bKx (814:5149)
                    left: 134,
                    top: 114,
                    child: Align(
                      child: SizedBox(
                        width: 108,
                        height: 108,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(54),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // maskgroupFfQ (814:5150)
                    left: 143,
                    top: 123,
                    child: Align(
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Image.asset(
                          'assets/avatar.png',
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group180717r2 (814:5161)
                    left: 26,
                    top: 37,
                    child: Align(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: CustomBackButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupfrqde5G (W75GYo6esJwGVKwRd1fRQD)
              padding: EdgeInsets.fromLTRB(18, 13, 16, 147),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group18061YwL (814:5134)
                    margin: EdgeInsets.fromLTRB(116, 0, 115, 45),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // eljadeendazT2i (814:5135)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                          child: Text(
                            'Eljad Eendaz',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              height: 1.2575,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // editprofileMNz (814:5136)
                          margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                          child: Text(
                            'Edit Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xff9796a1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group17998HGe (814:5137)
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroup2hqjESn (W75H5s3DiUQtoKXcxy2Hqj)
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group17852PKg (814:5138)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                                width: 339,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // fullnameh5U (814:5139)
                                      margin: EdgeInsets.fromLTRB(9, 0, 0, 7),
                                      child: Text(
                                        'Full name',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575,
                                          color: Color(0xff9796a1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupyqftDJi (W75HDcKK79dNyiSTpZyQfT)
                                      padding: EdgeInsets.fromLTRB(16, 25, 16, 14),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xfffe724c)),
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
                                      child: Text(
                                        'Eljad Eendaz',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575,
                                          color: Color(0xff111719),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // email44S (814:5143)
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'E-mail',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575,
                                    color: Color(0xff9796a1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupkdwhPMc (W75GrnagARpieW7u2YKdWH)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                          width: double.infinity,
                          height: 65,
                          child: Stack(
                            children: [
                              Positioned(
                                // JjU (814:5142)
                                left: 21.9077148438,
                                top: 21,
                                child: Align(
                                  child: SizedBox(
                                    width: 101,
                                    height: 31,
                                    child: Text(
                                      '\$ 1679.30',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle4142Q1p (814:5144)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 341,
                                    height: 65,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0xffeeeeee)),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3fe8e8e8),
                                            offset: Offset(15, 20),
                                            blurRadius: 22.5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // prelookstudiogmailcom3qU (814:5145)
                                left: 16,
                                top: 25,
                                child: Align(
                                  child: SizedBox(
                                    width: 189,
                                    height: 22,
                                    child: Text(
                                      'prelookstudio@gmail.com',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xff111719),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // phonenumbermFg (814:5146)
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 7),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xff9796a1),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupyncy6Yr (W75GxnQgbU7sNEBPViYNCy)
                          padding: EdgeInsets.fromLTRB(16, 24, 16, 19),
                          width: 339,
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
                          child: Text(
                            '+1 (783) 0986 8786',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xff111719),
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
    );
  }
}

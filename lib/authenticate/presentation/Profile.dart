import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/bloc/AuthBloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';
import 'package:food/authenticate/presentation/widget/CustomImputField.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';

import '../model/User.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.profile}) : super(key: key);
  final User? profile;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(),
      child: Scaffold(
          body: Page(
        profile: profile,
      )),
    );
  }
}

class Page extends StatefulWidget {
  Page({Key? key, required this.profile}) : super(key: key);
  final User? profile;

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  final _storage = new FlutterSecureStorage();
  final _formKey = GlobalKey<FormState>();
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  String? phoneValidator(value) {
    if (value == null || value.isEmpty || !RegExp("^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String? emailValidator(value) {
    if (value == null || value.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return 'Please enter a valid e-mail';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
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
                              "${widget.profile?.username}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              if (state is AuthStateProfileUpdatedSuccess) {
                                widget.profile?.first_name = first_name.text;
                                widget.profile?.last_name = last_name.text;
                                widget.profile?.email = email.text;
                                widget.profile?.phone = phone.text;
                                return Container(
                                  // editprofileMNz (814:5136)
                                  margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                  child: Text(
                                    'Profile updated successfully',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                );
                              }
                              if (state is AuthStateProfileUpdatedFailure) {
                                return Container(
                                  // editprofileMNz (814:5136)
                                  margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                  child: Text(
                                    'Something went wrong. Please make sure that your phone is unique',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                );
                              }
                              return Container(
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
                              );
                            },
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInputField(
                                field: "First name",
                                controller: first_name..text = widget.profile?.first_name ?? "first name",
                                validator: null,
                                icon: Icons.abc,
                                isPassword: false),
                            CustomInputField(
                                field: "Last name",
                                controller: last_name..text = widget.profile?.last_name ?? "last name",
                                validator: null,
                                icon: Icons.abc,
                                isPassword: false),
                            CustomInputField(
                                field: "E-mail",
                                controller: email..text = widget.profile?.email ?? "email",
                                validator: emailValidator,
                                icon: Icons.email,
                                isPassword: false),
                            CustomInputField(
                                field: "Phone Number",
                                controller: phone..text = widget.profile?.phone ?? "phone",
                                validator: phoneValidator,
                                icon: Icons.phone,
                                isPassword: false),
                            Center(
                                child: CustomFloatingButtonExtend(
                                    child: Text("Update"),
                                    backgroundColor: Colors.redAccent,
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        String token = jsonDecode(await _storage.read(key: "login_cookie") ?? "")["token"];

                                        Map<String, String> fields = {
                                          "first_name": first_name.text,
                                          "last_name": last_name.text,
                                          "email": email.text,
                                          "phone": phone.text
                                        };
                                        context.read<AuthBloc>().add(AuthProfileUpdated(token: token, fields: fields));
                                      }
                                    }))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

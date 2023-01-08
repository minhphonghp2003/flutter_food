import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';
import 'package:food/authenticate/presentation/widget/CustomFloatingButton.dart';
import 'package:food/authenticate/presentation/widget/CustomTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // signupv2d (814:6830)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset("assets/loginheader.png",
                      alignment: Alignment.bottomCenter,
                      height: 74,
                      fit: BoxFit.cover),
                ),
                CustomBackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            Container(
              // signupx7j (814:6853)
              margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
              child: Text(
                'Login\n',
                style: TextStyle(
                  fontSize: 36.4127006531,
                  fontWeight: FontWeight.w600,
                  height: 1.2000000838,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupy4idqxD (W75kNL5S8nwSP3umMay4iD)
              padding: EdgeInsets.fromLTRB(25, 29, 24, 28),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomInputField(
                          field: "Username",
                          icon: Icons.person,
                          isPassword: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        CustomInputField(
                            field: "Password",
                            icon: Icons.visibility,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                      .hasMatch(value)) {
                                return 'Password must contain:\n \u2022 One or more numeric characters\n \u2022 One or more uppercase characters\n \u2022 One or more lowercase characters\n \u2022 More than eight characters ';
                              }
                              return null;
                            },
                            isPassword: true),
                        Login(
                          formKey: _formKey,
                        ),
                      ],
                    ),
                  ),
                  OtherLoginMethod(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherLoginMethod extends StatelessWidget {
  const OtherLoginMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // group180941wo (814:6832)
      margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
      width: 325,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // autogrouphkl9x6M (W75kZKm7bN9YhYgqDQhkL9)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
            width: 324,
            height: 18,
            child: Stack(
              children: [
                Positioned(
                  // signupwith5Rs (814:6849)
                  left: 122,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: 73,
                      height: 18,
                      child: Text(
                        'Sign in with',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2575,
                          color: Color(0xff5b5b5e),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group17868Nfs (814:6850)
                  left: 0,
                  top: 5,
                  child: Container(
                    width: 324,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // group17867KLD (814:6833)
            width: double.infinity,
            height: 57,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  child: CustomActionFloatingButton(
                    icon: Icon(
                      // <-- Icon
                      // FontAwesomeIcons.gamepad,
                      Icons.facebook,
                      size: 35.0,
                      color: Colors.blue,
                    ),
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                    text: 'Google',
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
                  child: CustomActionFloatingButton(
                    icon: Icon(
                      // <-- Icon
                      // FontAwesomeIcons.gamepad,
                      Icons.g_mobiledata_outlined,
                      size: 40.0,
                      color: Colors.red,
                    ),
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                    text: 'Google',
                    onPressed: () {},
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

class Login extends StatelessWidget {
  const Login({Key? key, required this.formKey}) : super(key: key);

  final formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      // group17532m6R (814:6860)
      margin: EdgeInsets.fromLTRB(40, 0, 38, 33),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.5),
        boxShadow: [
          BoxShadow(
            color: Color(0x287a80be),
            offset: Offset(0, 10),
            blurRadius: 20,
          ),
        ],
      ),
      child: Container(
        // group17531fSh (814:6861)
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.5),
        ),
        child: CustomActionFloatingButton(
            text: "Login",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            }),
      ),
    );
  }
}

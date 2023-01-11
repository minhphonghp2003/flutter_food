import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';
import 'package:food/authenticate/presentation/widget/CustomFloatingButton.dart';
import 'package:food/authenticate/presentation/widget/CustomImputField.dart';
import 'package:food/foodlist/food.dart';

import '../bloc/AuthBloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(),
      child: Scaffold(
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
                    child: Image.asset("assets/loginheader.png", alignment: Alignment.bottomCenter, height: 74, fit: BoxFit.cover),
                  ),
                  CustomBackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // signupx7j (814:6853)
                    margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                    child: Text(
                      'Sign Up\n',
                      style: TextStyle(
                        fontSize: 36.4127006531,
                        fontWeight: FontWeight.w600,
                        height: 1.2000000838,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                    if (state is AuthStateProfileFetchedSuccess) {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => FoodList(
                                    userProfile: state.profile,
                                  )),
                          (Route<dynamic> route) => false);
                    }
                    if (state is AuthStateLogInSuccess) {
                      context.read<AuthBloc>().add(AuthProfileFetched(token: state.authCredentials["token"]));
                    }
                  }, builder: (context, state) {
                    if (state is AuthStateRegisterFailure) {
                      return Container(
                        // signupx7j (814:6853)
                        margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                        child: Text(
                          'Cannot create account :((((((\n'
                          'Username, phone or email has been taken.',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.2000000838,
                            color: Colors.red,
                          ),
                        ),
                      );
                    }
                    return Text("");
                  }),
                ],
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
                            controller: usernameEditingController,
                            field: "Username",
                            icon: Icons.abc,
                            isPassword: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid username';
                              }
                              return null;
                            },
                          ),
                          CustomInputField(
                            controller: phoneEditingController,
                            field: "Phone",
                            icon: Icons.phone,
                            isPassword: false,
                            validator: (value) {
                              if (value == null || value.isEmpty || !RegExp("^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                          ),
                          CustomInputField(
                              controller: emailEditingController,
                              field: "E-mail",
                              icon: Icons.email_outlined,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                                  return 'Please enter a valid e-mail';
                                }
                                return null;
                              },
                              isPassword: false),
                          CustomInputField(
                              controller: passwordEditingController,
                              field: "Password",
                              icon: Icons.visibility,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                        // !RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{2,}$')
                                        .hasMatch(value)) {
                                  return 'Password must contain:\n \u2022 One or more numeric characters\n \u2022 One or more uppercase characters\n \u2022 One or more lowercase characters\n \u2022 More than eight characters ';
                                }
                                return null;
                              },
                              isPassword: true),
                          SignUp(
                            formKey: _formKey,
                            phoneController: phoneEditingController,
                            usernameController: usernameEditingController,
                            emailController: emailEditingController,
                            passwordController: passwordEditingController,
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
                    text: 'Facebook',
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

class SignUp extends StatelessWidget {
  const SignUp(
      {Key? key,
      required this.formKey,
      required this.phoneController,
      required this.emailController,
      required this.usernameController,
      required this.passwordController})
      : super(key: key);
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
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
            text: "Sign up",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<AuthBloc>().add(AuthRegistered(
                    username: usernameController.text, email: emailController.text, phone: phoneController.text, password: passwordController.text));
              }
            }),
      ),
    );
  }
}

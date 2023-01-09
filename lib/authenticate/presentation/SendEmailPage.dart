import 'package:flutter/material.dart';
import 'package:food/authenticate/presentation/ResetPasswordPage.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';
import 'package:food/authenticate/presentation/widget/CustomFloatingButton.dart';
import 'package:food/authenticate/presentation/widget/CustomImputField.dart';

class SendEmailPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailEditingController = TextEditingController();

  SendEmailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email verification\n',
                  style: TextStyle(
                    fontSize: 36.4127006531,
                    fontWeight: FontWeight.w600,
                    height: 1.2000000838,
                    color: Color(0xff000000),
                  ),
                ),
                Container(
                  // pleaseenteryouremailaddresstor (814:6648)
                  // margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                  constraints: BoxConstraints(
                    maxWidth: 201,
                  ),
                  child: Text(
                    'Please enter your email address to request a password reset',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.3769999913,
                      color: Color(0xff9796a1),
                    ),
                  ),
                ),
              ],
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
                        controller: emailEditingController,
                        field: "Email",
                        icon: Icons.email,
                        isPassword: false,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      Send(
                        emailEditingController: emailEditingController,
                        formKey: _formKey,
                      ),
                    ],
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

class Send extends StatelessWidget {
  final TextEditingController emailEditingController;

  const Send(
      {Key? key, required this.formKey, required this.emailEditingController})
      : super(key: key);

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
        child: Builder(builder: (context) {
          return CustomActionFloatingButton(
              text: "Send",
              backgroundColor: Colors.redAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ));
                // if (formKey.currentState!.validate()) {
                //   String email = emailEditingController.text;
                // }
              });
        }),
      ),
    );
  }
}

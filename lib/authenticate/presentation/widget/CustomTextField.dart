import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  String field;
  final String? Function(String?)? validator;
  bool isPassword;
  IconData icon;
  CustomInputField({
    Key? key,
    required this.field,
    required this.validator,
    required this.icon,
    required this.isPassword,
  }) : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _fieldVisible = true;
  @override
  void initState() {
    super.initState();
    _fieldVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // passwordHdB (814:6866)
      margin: EdgeInsets.fromLTRB(1.99, 0, 0, 33),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // password2Ks (814:6867)
            margin: EdgeInsets.fromLTRB(2.01, 0, 0, 7),
            child: Text(
              widget.field,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.2575,
                color: Color(0xff9796a1),
              ),
            ),
          ),
          Container(
              // autogroupzqjdjzy (W75m7opzGL5n6ZM5FcZQJD)
              padding: EdgeInsets.all(10),
              width: double.infinity,
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
              child: TextFormField(
                validator: widget.validator,
                keyboardType: TextInputType.text,
                // controller: _userPasswordController,
                obscureText: widget.isPassword &&
                    !_fieldVisible, //This will obscure text dynamically
                decoration: InputDecoration(
                  // labelText: 'Password',
                  // hintText: 'Enter your password',
                  border: InputBorder.none,
                  // Here is key idea
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _fieldVisible ? widget.icon : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      if (widget.isPassword) {
                        setState(() {
                          _fieldVisible = !_fieldVisible;
                        });
                      }
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

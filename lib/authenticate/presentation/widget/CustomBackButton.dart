import 'package:flutter/material.dart';

import 'CustomFloatingButton.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x287a80be),
            offset: Offset(0, 10),
            blurRadius: 20,
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: CustomActionFloatingButton(
          backgroundColor: Colors.white,
          textColor: Colors.black,
          text: "|",
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: onPressed),
    );
  }
}

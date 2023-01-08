import 'package:flutter/material.dart';

class CustomActionFloatingButton extends StatelessWidget {
  const CustomActionFloatingButton(
      {Key? key,
      this.icon,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      required this.onPressed})
      : super(key: key);
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Widget? icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: text,
      label: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          height: 1.2575,
          color: textColor,
        ),
      ),
      backgroundColor: backgroundColor,
      icon: icon,
      onPressed: onPressed,
    );
  }
}

import 'package:flutter/material.dart';

class CustomActionFloatingButton extends StatelessWidget {
  const CustomActionFloatingButton(
      {Key? key,
      required this.child,
      required this.backgroundColor,
      required this.onPressed})
      : super(key: key);
  final Color backgroundColor;
  final Widget? child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      child: child,
      onPressed: onPressed,
    );
  }
}

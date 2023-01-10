import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key, required this.child, required this.backgroundColor, required this.onPressed}) : super(key: key);
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

class CustomFloatingButtonExtend extends StatelessWidget {
  const CustomFloatingButtonExtend({Key? key, required this.child, required this.backgroundColor, required this.onPressed}) : super(key: key);
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      label: child,
    );
  }
}

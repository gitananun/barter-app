import 'package:flutter/material.dart';

class CustomLargeClickableGestureDetector extends StatelessWidget {
  const CustomLargeClickableGestureDetector({
    Key? key,
    this.vertical = 20,
    this.horizontal = 10,
    required this.onTap,
    required this.child,
  }) : super(key: key);
  final Widget? child;
  final double vertical;
  final double horizontal;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: child,
      ),
    );
  }
}

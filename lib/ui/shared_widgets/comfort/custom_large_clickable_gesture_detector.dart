import 'package:flutter/material.dart';

class CustomLargeClickableGestureDetector extends StatelessWidget {
  const CustomLargeClickableGestureDetector({
    Key key,
    @required this.onTap,
    @required this.child,
  }) : super(key: key);
  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: child,
      ),
    );
  }
}

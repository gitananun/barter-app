import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    Key key,
    this.child = const SizedBox(),
    this.color = Colors.blueGrey,
    this.splashColor = Colors.blueAccent,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final Color splashColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          splashColor: splashColor, // inkwell color
          child: child,
          onTap: onTap ?? () {},
        ),
      ),
    );
  }
}

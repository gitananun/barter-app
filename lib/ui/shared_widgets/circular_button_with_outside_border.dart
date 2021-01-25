import 'package:flutter/material.dart';

class CustomCircularButtonWithOutsideBorder extends StatelessWidget {
  const CustomCircularButtonWithOutsideBorder({
    Key key,
    this.child = const SizedBox(),
    this.color = Colors.blueGrey,
    this.splashColor,
    this.borderPadding = 5,
    this.borderWidth = 1,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final Color splashColor;
  final double borderPadding;
  final double borderWidth;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderPadding),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: color, width: borderWidth),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Material(
          color: color,
          child: InkWell(
            splashColor: splashColor ?? null,
            child: child,
            onTap: onTap ?? () {},
          ),
        ),
      ),
    );
  }
}

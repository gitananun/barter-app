import 'package:flutter/material.dart';

class CustomCircularButtonWithOutsideBorder extends StatelessWidget {
  const CustomCircularButtonWithOutsideBorder({
    Key key,
    this.child = const SizedBox(),
    this.color = Colors.blueGrey,
    this.splashColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final Color splashColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: color, width: 1),
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

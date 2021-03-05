import 'package:flutter/material.dart';

class CustomCircularButtonWithOutsideBorder extends StatelessWidget {
  const CustomCircularButtonWithOutsideBorder({
    Key? key,
    this.onTap,
    this.child = const SizedBox(),
    this.color = Colors.blueGrey,
    this.splashColor,
    this.borderPadding = 5,
    this.borderWidth = 1,
  }) : super(key: key);
  final Color color;
  final Widget child;
  final Color? splashColor;
  final double borderWidth;
  final double borderPadding;
  final GestureTapCallback? onTap;

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

import 'package:flutter/material.dart';

class SingleProductDetailsCircularIcon extends StatelessWidget {
  const SingleProductDetailsCircularIcon(
    this.icon, {
    Key? key,
    this.size,
    this.padding,
    this.iconColor,
    this.background,
  }) : super(key: key);
  final double? size;
  final IconData icon;
  final Color? iconColor;
  final Color? background;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: background ?? Colors.red,
      ),
      child: Icon(
        icon,
        color: iconColor ?? Colors.white,
        size: size ?? Theme.of(context).textTheme.button?.fontSize,
      ),
    );
  }
}

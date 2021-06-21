import 'package:flutter/material.dart';

class CustomAppBarLeadingCircularIconButton extends StatelessWidget {
  const CustomAppBarLeadingCircularIconButton({
    Key? key,
    this.color,
    this.width,
    this.margin,
    this.onPressed,
    required this.icon,
  }) : super(key: key);
  final double? width;
  final IconData icon;
  final Color? color;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      decoration: BoxDecoration(color: color ?? Colors.red, shape: BoxShape.circle),
      child: IconButton(
        color: Colors.white,
        padding: EdgeInsets.zero,
        onPressed: onPressed ?? () {},
        highlightColor: Colors.transparent,
        icon: Icon(icon, size: Theme.of(context).textTheme.caption?.fontSize),
      ),
    );
  }
}

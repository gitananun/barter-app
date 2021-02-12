import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    Key key,
    this.icon,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.bgColor,
    this.alignment,
    this.boxShadow,
    this.active = true,
    this.padding = const EdgeInsets.all(12),
  }) : super(key: key);

  final bool active;
  final Widget child;
  final double width;
  final double height;
  final Color bgColor;
  final IconData icon;
  final List<BoxShadow> boxShadow;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    final Color _textColor = active ? _themeData.primaryColor : _themeData.disabledColor;

    final Color _bgColor =
        active ? _themeData.primaryColor.withOpacity(0.15) : _themeData.disabledColor.withOpacity(0.15);

    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor ?? _bgColor, boxShadow: boxShadow),
      child: icon != null ? Icon(icon, color: _textColor, size: _themeData.textTheme.subtitle2.fontSize) : child,
    );
  }
}

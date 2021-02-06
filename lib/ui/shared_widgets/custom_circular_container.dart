import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    Key key,
    this.child,
    this.active = true,
    this.bgColor,
    this.icon,
  }) : super(key: key);

  final Widget child;
  final bool active;
  final Color bgColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final Color _bgColor =
        bgColor ?? active ? _themeData.primaryColor.withOpacity(0.15) : _themeData.disabledColor.withOpacity(0.15);
    final Color _textColor = active ? _themeData.primaryColor : _themeData.disabledColor;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: _bgColor),
      child: icon != null ? Icon(icon, color: _textColor, size: _themeData.textTheme.subtitle2.fontSize) : child,
    );
  }
}

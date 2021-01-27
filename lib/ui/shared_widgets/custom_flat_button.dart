import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key key,
    @required this.primary,
    this.child,
    this.onPressed,
    this.padding,
    this.color,
    this.text,
  }) : super(key: key);
  final bool primary;
  final Widget child;
  final Function onPressed;
  final EdgeInsetsGeometry padding;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return FlatButton(
      minWidth: 20,
      color: color ?? primary ? _theme.primaryColor : _theme.accentColor,
      padding: padding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: child ?? Text(text ?? 'my button', style: _theme.textTheme.button),
      onPressed: onPressed ?? () {},
    );
  }
}

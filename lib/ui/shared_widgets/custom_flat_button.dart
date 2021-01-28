import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key key,
    this.primary = true,
    this.child,
    this.onPressed,
    this.padding,
    this.color,
    this.text,
    this.minWidth = 20,
    this.height,
  }) : super(key: key);
  final bool primary;
  final Widget child;
  final Function onPressed;
  final EdgeInsetsGeometry padding;
  final Color color;
  final String text;
  final double minWidth;
  final double height;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    Color _color = color != null
        ? color
        : primary
            ? _theme.primaryColor
            : _theme.accentColor;

    return FlatButton(
      minWidth: minWidth,
      height: height ?? CustomButtonStyle.flatButtonHeight(context),
      color: _color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: child ?? Text(text ?? 'my button', style: _theme.textTheme.button),
      onPressed: onPressed ?? () {},
    );
  }
}

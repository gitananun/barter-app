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
    this.minWidth = 150,
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

    Color _bgColor = color != null
        ? color
        : primary
            ? _theme.primaryColor
            : Colors.white;

    Color _textColor = primary ? Colors.white : _theme.accentColor;
    Color _borderColor = primary ? Colors.transparent : _theme.accentColor;

    return FlatButton(
      minWidth: minWidth,
      height: height ?? CustomButtonStyle.flatButtonHeight(context),
      color: _bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: _borderColor)),
      child: child ?? Text(text ?? 'my button', style: _theme.textTheme.button.apply(color: _textColor)),
      onPressed: onPressed ?? () {},
    );
  }
}

import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key key,
    this.text,
    this.child,
    this.color,
    this.height,
    this.padding,
    this.onPressed,
    this.borderColor,
    this.primary = true,
    this.minWidth = 150,
  }) : super(key: key);
  final Color color;
  final String text;
  final Widget child;
  final bool primary;
  final double height;
  final double minWidth;
  final Color borderColor;
  final Function onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    Color _bgColor = color != null
        ? color
        : primary
            ? _theme.primaryColor
            : Colors.white;

    Color _borderColor = borderColor != null
        ? borderColor
        : primary
            ? Colors.transparent
            : _theme.accentColor;

    Color _textColor = primary ? Colors.white : _theme.accentColor;

    return SizedBox(
      width: minWidth,
      height: height ?? CustomButtonStyle.flatButtonHeight(context),
      child: TextButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          enableFeedback: true,
          backgroundColor: MaterialStateProperty.all<Color>(_bgColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: _borderColor),
            ),
          ),
        ),
        child: child ?? Text(text ?? 'my button', style: _theme.textTheme.button.apply(color: _textColor)),
      ),
    );
  }
}

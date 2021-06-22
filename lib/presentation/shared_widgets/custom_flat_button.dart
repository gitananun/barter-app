import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key? key,
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
  final Color? color;
  final String? text;
  final Widget? child;
  final bool primary;
  final double? height;
  final double minWidth;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    final Color _bgColor = color ?? (primary ? _theme.primaryColor : Colors.white);
    final Color _borderColor = borderColor ?? (primary ? Colors.transparent : _theme.accentColor);

    final Color _textColor = primary ? _theme.canvasColor : _theme.accentColor;

    return SizedBox(
      height: height,
      width: minWidth,
      child: TextButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          enableFeedback: true,
          backgroundColor: MaterialStateProperty.all<Color>(_bgColor),
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: _borderColor),
            ),
          ),
        ),
        child: child ?? Text(text ?? 'my button', style: _theme.textTheme.button?.apply(color: _textColor)),
      ),
    );
  }
}

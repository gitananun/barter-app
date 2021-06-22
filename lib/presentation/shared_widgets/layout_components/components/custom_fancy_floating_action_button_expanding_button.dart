import 'dart:math';

import 'package:flutter/material.dart';

class CustomFancyFloatingActionButtonExpandingButton extends StatelessWidget {
  const CustomFancyFloatingActionButtonExpandingButton({Key? key, this.onPressed, required this.icon})
      : super(key: key);
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return FloatingActionButton(
      elevation: 0,
      onPressed: onPressed,
      heroTag: Random().nextDouble(),
      backgroundColor: _themeData.primaryColor,
      child: Icon(icon, size: _themeData.textTheme.caption?.fontSize, color: Colors.white),
    );
  }
}

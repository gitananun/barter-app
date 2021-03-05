import 'dart:math';

import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class CustomFancyFloatingActionButtonExpandingButton extends StatelessWidget {
  const CustomFancyFloatingActionButtonExpandingButton({Key? key, this.onPressed, @required this.icon})
      : super(key: key);
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      heroTag: Random().nextDouble(),
      onPressed: onPressed,
      backgroundColor: MTStheme.primaryColor,
      child: Icon(icon, size: Theme.of(context).textTheme.caption?.fontSize, color: Colors.white),
    );
  }
}

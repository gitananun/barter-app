import 'dart:math';

import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class CustomFancyFloatingActionButtonExpandingButton extends StatelessWidget {
  const CustomFancyFloatingActionButtonExpandingButton({Key key, this.onPressed, @required this.icon})
      : super(key: key);
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      heroTag: Random().nextDouble(),
      onPressed: onPressed ?? null,
      backgroundColor: MTStheme.primaryColor,
      child: Icon(icon, size: Theme.of(context).textTheme.caption.fontSize, color: Colors.white),
    );
  }
}

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
      onPressed: onPressed ?? null,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: MTStheme.primaryTextColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Icon(icon, size: Theme.of(context).textTheme.caption.fontSize, color: MTStheme.primaryTextColor),
    );
  }
}

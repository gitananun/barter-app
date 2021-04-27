import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.backgroundColor,
  }) : super(key: key);
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return FloatingActionButton(
      elevation: 0,
      onPressed: onPressed,
      highlightElevation: 0,
      backgroundColor: backgroundColor ?? _themeData.primaryColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: _themeData.primaryColor, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

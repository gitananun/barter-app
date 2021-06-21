import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_circular_container.dart';

class CustomCircularContainerWithIcon extends StatelessWidget {
  const CustomCircularContainerWithIcon({
    Key? key,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return CustomCircularContainer(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      bgColor: isActive ? _themeData.primaryColor : Colors.white,
      child: FaIcon(
        icon,
        size: _themeData.textTheme.headline6?.fontSize,
        color: isActive ? Colors.white : _themeData.accentColor,
      ),
    );
  }
}

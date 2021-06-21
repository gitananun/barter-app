import 'package:flutter/material.dart';

import '../../../app/routes/app_routes.dart';
import 'components/custom_bottom_navigation_bar_icon.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final _items = navigationBarItems;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return BottomNavigationBar(
      onTap: widget.onTap,
      backgroundColor: Colors.white,
      currentIndex: widget.currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: _themeData.primaryColor,
      unselectedItemColor: _themeData.accentColor,
      items: [
        for (int i = 0; i < _items.length; i++)
          BottomNavigationBarItem(
            label: _items[i]['label'] as String,
            icon: CustomBottomNavigationBarIcon(icon: _items[i]['icon'] as IconData),
            activeIcon: CustomBottomNavigationBarIcon(icon: _items[i]['icon'] as IconData, active: true),
          ),
      ],
    );
  }
}

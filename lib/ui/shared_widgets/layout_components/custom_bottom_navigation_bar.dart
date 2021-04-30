import 'package:barter/ui/shared_widgets/layout_components/components/custom_bottom_navigation_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  final navigationBarItems = const [
    {'icon': FontAwesomeIcons.home, 'label': 'Home', 'route': '/home_dashboard'},
    {'icon': FontAwesomeIcons.search, 'label': 'Search', 'route': '/search'},
    {'icon': FontAwesomeIcons.solidHeart, 'label': 'Favorites'},
    {'icon': FontAwesomeIcons.comments, 'label': 'Chat'},
    {'icon': FontAwesomeIcons.solidUser, 'label': 'Profile'},
  ];

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
        for (int i = 0; i < navigationBarItems.length; i++)
          BottomNavigationBarItem(
            label: navigationBarItems[i]['label'] as String,
            icon: CustomBottomNavigationBarIcon(icon: navigationBarItems[i]['icon'] as IconData),
            activeIcon: CustomBottomNavigationBarIcon(icon: navigationBarItems[i]['icon'] as IconData, active: true),
          ),
      ],
    );
  }
}

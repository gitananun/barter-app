import 'package:barter/ui/shared_widgets/layout_components/components/custom_bottom_navigation_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key, this.currentIndex = 0}) : super(key: key);
  final int currentIndex;

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

  late int _currentIndex = widget.currentIndex;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    void _navigate(int i) {
      setState(() => _currentIndex = i);
      Navigator.pushReplacementNamed(context, navigationBarItems[i]['route'] as String);
    }

    return BottomNavigationBar(
      onTap: _navigate,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
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

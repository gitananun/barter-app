import 'package:barter/ui/shared_widgets/layout_components/components/custom_bottom_navigation_bar_icon.dart';
import 'package:barter/ui/utils/navigation/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key key}) : super(key: key);

  final List<Map<String, dynamic>> navigationBarItems = const [
    {'icon': FontAwesomeIcons.home, 'label': 'Home'},
    {'icon': FontAwesomeIcons.solidHeart, 'label': 'Favorites'},
    {'icon': FontAwesomeIcons.comments, 'label': 'Chat'},
    {'icon': FontAwesomeIcons.solidUser, 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: _themeData.primaryColor,
      unselectedItemColor: _themeData.accentColor,
      onTap: (index) => NavigationUtils.navigateToScreen(context, SizedBox()),
      items: [
        for (int i = 0; i < navigationBarItems.length; i++)
          BottomNavigationBarItem(
            icon: CustomBottomNavigationBarIcon(icon: navigationBarItems[i]['icon']),
            label: navigationBarItems[i]['label'],
          ),
      ],
    );
  }
}

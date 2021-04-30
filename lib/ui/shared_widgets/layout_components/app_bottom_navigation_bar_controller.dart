import 'package:barter/ui/screens/home/home_dashboard/home_dashboard.dart';
import 'package:barter/ui/screens/search/layout/seach_scaffold.dart';
import 'package:barter/ui/shared_widgets/layout_components/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBarController extends StatefulWidget {
  const AppBottomNavigationBarController({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationBarControllerState createState() => _AppBottomNavigationBarControllerState();
}

class _AppBottomNavigationBarControllerState extends State<AppBottomNavigationBarController> {
  final List<Widget> screens = const [
    HomeDashboardScreen(key: PageStorageKey('home')),
    SearchScaffold(key: PageStorageKey('search')),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => CustomBottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        bucket: bucket,
        child: screens[_selectedIndex],
      ),
    );
  }
}

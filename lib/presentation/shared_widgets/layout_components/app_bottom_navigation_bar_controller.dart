import 'package:flutter/material.dart';

import '../../../app/routes/app_routes.dart';
import 'custom_bottom_navigation_bar.dart';

class AppBottomNavigationBarController extends StatefulWidget {
  const AppBottomNavigationBarController({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationBarControllerState createState() => _AppBottomNavigationBarControllerState();
}

class _AppBottomNavigationBarControllerState extends State<AppBottomNavigationBarController> {
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
        child: navigationScreens[_selectedIndex],
      ),
    );
  }
}

import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_app_bar.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_custom_circular_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

import 'package:barter/ui/screens/onboarding/_screens/first_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/second_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/third_onboarding.dart';
import 'package:flutter/services.dart';

@immutable
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: OnBoardingAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(height: OnBoardingStyle.bottomAppBarHeight),
        floatingActionButton: OnBoardingCustomCircularButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: PageView(
          onPageChanged: (int page) => _onPageChanged(page),
          controller: _controller,
          physics: BouncingScrollPhysics(),
          children: [FirstOnboarding(_currentPage), SecondOnboarding(), ThirdOnboarding()],
        ),
      ),
    );
  }

  void _onPageChanged(int page) {
    HapticFeedback.mediumImpact();
    setState(() => _currentPage = page);
  }
}

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
      child: Scaffold(
        body: PageView(
          onPageChanged: (int page) => _onPageChanged(page),
          controller: _controller,
          physics: BouncingScrollPhysics(),
          children: [
            FirstOnboarding(_currentPage),
            SecondOnboarding(),
            ThirdOnboarding(),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int page) {
    HapticFeedback.mediumImpact();
    setState(() => _currentPage = page);
  }
}

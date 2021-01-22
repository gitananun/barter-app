import 'package:flutter/material.dart';

import 'package:barter/ui/screens/onboarding/_screens/first_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/second_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/third_onboarding.dart';

@immutable
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);

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
          controller: _controller,
          physics: BouncingScrollPhysics(),
          children: [
            FirstOnboarding(),
            SecondOnboarding(),
            ThirdOnboarding(),
          ],
        ),
      ),
    );
  }
}

import 'package:barter/ui/screens/onboarding/first_onboarding.dart';
import 'package:barter/ui/screens/onboarding/second_onboarding.dart';
import 'package:barter/ui/screens/onboarding/third_onboarding.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key key}) : super(key: key);
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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

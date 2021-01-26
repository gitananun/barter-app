import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_app_bar.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_custom_circular_button.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_welcome_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

import 'package:barter/ui/screens/onboarding/_screens/first_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/second_onboarding.dart';
import 'package:barter/ui/screens/onboarding/_screens/third_onboarding.dart';
import 'package:flutter/services.dart';
import 'package:slider_indicators/slider_indicators.dart';

@immutable
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  final int _totalPages = 3;
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
    final bool _isLastPage = (_currentPage == _totalPages - 1);

    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        appBar: OnBoardingAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(height: OnBoardingStyle.bottomAppBarHeight),
        floatingActionButton: !_isLastPage ? OnBoardingCustomCircularButton(_onNextPage) : OnBoardingWelcomeButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            PageView(
              onPageChanged: (int page) => _onPageChanged(page),
              controller: _controller,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                FirstOnboarding(),
                SecondOnboarding(),
                ThirdOnboarding(),
              ],
            ),
            Center(child: SliderIndicators(_currentPage, _totalPages)),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int page) {
    HapticFeedback.mediumImpact();
    setState(() => _currentPage = page);
  }

  void _onNextPage() => _controller.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOutSine,
      );
}

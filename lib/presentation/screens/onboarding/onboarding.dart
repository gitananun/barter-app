import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slider_indicators/slider_indicators.dart';

import '_components/onboarding_bottom_nav_bar.dart';
import '_components/onboarding_floating_action_button.dart';
import '_screens/first_onboarding.dart';
import '_screens/second_onboarding.dart';
import '_screens/third_onboarding.dart';
import '_shared_widgets/onboarding_app_bar.dart';

@immutable
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  final int _totalPages = 3;
  int _currentPage = 0;

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
    final bool _isLastPage = _currentPage == _totalPages - 1;

    void _onNextPage() => _isLastPage
        ? Navigator.pushReplacementNamed(context, '/login')
        : _controller.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOutSine);

    return Scaffold(
      appBar: const OnBoardingAppBar(),
      bottomNavigationBar: const OnBoardingBottomNavBar(),
      floatingActionButton: OnBoardingFloatingActionButton(isLastPage: _isLastPage, onNextPage: _onNextPage),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          PageView(
            onPageChanged: _onPageChanged,
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            children: const [
              FirstOnboarding(),
              SecondOnboarding(),
              ThirdOnboarding(),
            ],
          ),
          SliderIndicators(_currentPage, _totalPages),
        ],
      ),
    );
  }

  void _onPageChanged(int page) {
    HapticFeedback.mediumImpact();
    setState(() => _currentPage = page);
  }
}

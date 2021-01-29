import 'package:barter/ui/screens/onboarding/_components/onboarding_welcome_button.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_custom_circular_button.dart';
import 'package:flutter/material.dart';

class OnBoardingFloatingActionButton extends StatelessWidget {
  const OnBoardingFloatingActionButton({
    Key key,
    @required this.isLastPage,
    @required this.onNextPage,
  }) : super(key: key);
  final bool isLastPage;
  final Function onNextPage;

  @override
  Widget build(BuildContext context) =>
      !isLastPage ? OnBoardingCustomCircularButton(onNextPage) : OnBoardingWelcomeButton(onNextPage);
}

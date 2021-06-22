import 'package:flutter/material.dart';

import '../shared_widgets/onboarding_custom_circular_button.dart';
import 'onboarding_welcome_button.dart';

class OnBoardingFloatingActionButton extends StatelessWidget {
  const OnBoardingFloatingActionButton({
    Key? key,
    required this.isLastPage,
    required this.onNextPage,
  }) : super(key: key);
  final bool? isLastPage;
  final GestureTapCallback? onNextPage;

  @override
  Widget build(BuildContext context) => !(isLastPage ?? true)
      ? OnBoardingCustomCircularButton(onNextPage ?? () {})
      : OnBoardingWelcomeButton(onNextPage ?? () {});
}

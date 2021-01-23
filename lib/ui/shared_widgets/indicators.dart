import 'package:barter/constants.dart';
import 'package:barter/ui/shared_widgets/single_indicator.dart';
import 'package:flutter/material.dart';

class CustomIndicators extends StatelessWidget {
  const CustomIndicators(this.page, {Key key}) : super(key: key);
  final int page;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (int i = 0; i < OnBoardingConstants.totalPages; i++) SingleIndicator(page == i)],
    );
  }
}

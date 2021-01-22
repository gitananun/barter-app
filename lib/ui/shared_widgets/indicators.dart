import 'package:barter/constants.dart';
import 'package:flutter/material.dart';

class CustomIndicators extends StatelessWidget {
  const CustomIndicators(this.page, {Key key}) : super(key: key);
  final int page;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (int i = 0; i < OnBoardingConstants.totalPages; i++) _SingleIndicator(page == i)],
    );
  }
}

class _SingleIndicator extends StatelessWidget {
  _SingleIndicator(this.isActive);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeContext = Theme.of(context);
    final Color _bgColor = isActive ? _themeContext.primaryColor : _themeContext.disabledColor.withOpacity(0.3);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: CircleAvatar(radius: 4, backgroundColor: _bgColor),
    );
  }
}

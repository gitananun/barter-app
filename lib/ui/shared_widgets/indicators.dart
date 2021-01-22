import 'package:flutter/material.dart';

class CustomIndicators extends StatelessWidget {
  const CustomIndicators(this.page, {Key key}) : super(key: key);
  final int page;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SingleIndicator(page == 0),
        SizedBox(width: 5),
        _SingleIndicator(page == 1),
        SizedBox(width: 5),
        _SingleIndicator(page == 2),
      ],
    );
  }
}

class _SingleIndicator extends StatelessWidget {
  _SingleIndicator(this.isActive, {Key key}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeContext = Theme.of(context);
    return CircleAvatar(
      radius: 4,
      backgroundColor: isActive ? _themeContext.primaryColor : _themeContext.disabledColor.withOpacity(0.3),
    );
  }
}

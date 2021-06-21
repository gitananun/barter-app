import 'package:flutter/material.dart';

import '../../styles/types/duration/duration_style.dart';

class CustomAnimatedOpacity extends StatelessWidget {
  const CustomAnimatedOpacity({Key? key, required this.child, this.condition = false}) : super(key: key);
  final Widget child;
  final bool condition;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: condition ? 0 : 1,
      duration: DurationStyle.animationDuration,
      child: child,
    );
  }
}

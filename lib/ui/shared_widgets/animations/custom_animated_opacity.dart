import 'package:barter/ui/styles/types/duration/duration_style.dart';
import 'package:flutter/material.dart';

class CustomAnimatedOpacity extends StatelessWidget {
  const CustomAnimatedOpacity({Key? key, required this.child, this.condition = false}) : super(key: key);
  final Widget child;
  final bool condition;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      child: child,
      opacity: condition ? 0 : 1,
      duration: DurationStyle.animationDuration,
    );
  }
}

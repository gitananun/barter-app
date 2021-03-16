import 'package:barter/ui/styles/types/duration/duration_style.dart';
import 'package:flutter/material.dart';

class CustomAnimatedSwitcher extends StatelessWidget {
  const CustomAnimatedSwitcher({
    Key? key,
    required this.child1,
    required this.child2,
    required this.condition,
  }) : super(key: key);
  final Widget? child2;
  final Widget? child1;
  final bool? condition;

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
        duration: DurationStyle.animationDuration,
        child: (condition ?? false) ? child1 : child2,
      );
}

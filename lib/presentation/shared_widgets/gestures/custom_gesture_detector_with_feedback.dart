import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomGestureDetectorWithFeedback extends StatelessWidget {
  const CustomGestureDetectorWithFeedback({Key? key, required this.onTap, required this.child}) : super(key: key);
  final GestureTapCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
      child: child,
    );
  }
}

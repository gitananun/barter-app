import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';

class CustomMainLayoutPadding extends StatelessWidget {
  const CustomMainLayoutPadding({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MTStheme.contentPadding,
      child: child,
    );
  }
}

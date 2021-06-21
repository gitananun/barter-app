import 'package:flutter/material.dart';

class CustomMainLayoutPadding extends StatelessWidget {
  const CustomMainLayoutPadding({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: child,
    );
  }
}

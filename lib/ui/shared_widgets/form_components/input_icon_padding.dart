import 'package:flutter/material.dart';

class InputIconPadding extends StatelessWidget {
  const InputIconPadding({Key? key, required this.child, this.left = 20, this.right = 20}) : super(key: key);
  final Widget? child;
  final double right;
  final double left;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(left: left, right: right),
        child: child,
      );
}

import 'package:flutter/material.dart';

class InputIconPadding extends StatelessWidget {
  const InputIconPadding({Key key, @required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      );
}

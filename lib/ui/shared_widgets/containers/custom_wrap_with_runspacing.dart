import 'package:flutter/material.dart';

class CustomWrapWithRunSpacing extends StatelessWidget {
  const CustomWrapWithRunSpacing({Key key, this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Wrap(runSpacing: 15, children: children);
}

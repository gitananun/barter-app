import 'package:flutter/material.dart';

class CustomWrapWithRunSpacing extends StatelessWidget {
  const CustomWrapWithRunSpacing({Key? key, this.children, this.alignment}) : super(key: key);
  final List<Widget>? children;
  final WrapAlignment? alignment;

  @override
  Widget build(BuildContext context) => Wrap(
        alignment: alignment ?? WrapAlignment.center,
        runSpacing: 15,
        children: children ?? [],
      );
}

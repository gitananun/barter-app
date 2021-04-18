import 'package:barter/ui/styles/types/double/double_style.dart';
import 'package:flutter/material.dart';

class SearchLayout extends StatelessWidget {
  const SearchLayout({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Wrap(
        runSpacing: DoubleStyle.spaceBetweenSection,
        children: children,
      ),
    );
  }
}

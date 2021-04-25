import 'package:flutter/material.dart';

class SearchLayout extends StatelessWidget {
  const SearchLayout({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(children: children),
    );
  }
}

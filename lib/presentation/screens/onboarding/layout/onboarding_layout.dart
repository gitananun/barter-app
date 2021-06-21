import 'package:flutter/material.dart';

import '../../../styles/types/edge_insets/edge_insets_style.dart';

@immutable
class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({
    Key? key,
    required this.section1,
    required this.section2,
  }) : super(key: key);

  final Widget? section1;
  final Widget? section2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsStyle.contentPadding,
      child: Column(
        children: [
          Expanded(flex: 4, child: section1 ?? const SizedBox()),
          Expanded(flex: 6, child: Center(child: SingleChildScrollView(child: section2)))
        ],
      ),
    );
  }
}

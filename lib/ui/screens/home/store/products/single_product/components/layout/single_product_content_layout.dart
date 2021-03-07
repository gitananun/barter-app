import 'package:flutter/material.dart';

class SingleProductContentLayout extends StatelessWidget {
  const SingleProductContentLayout({
    Key? key,
    required this.section1,
    required this.section2,
  }) : super(key: key);
  final Widget section1;
  final Widget section2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: section1,
          width: double.infinity,
        ),
        SizedBox(height: 20),
        Expanded(
          child: Container(
            child: section2,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}

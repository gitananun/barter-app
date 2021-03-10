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
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  child: section1,
                  width: double.infinity,
                  color: Colors.transparent,
                )),
            Expanded(flex: 7, child: SizedBox()),
          ],
        ),
        Container(child: section2),
      ],
    );
  }
}

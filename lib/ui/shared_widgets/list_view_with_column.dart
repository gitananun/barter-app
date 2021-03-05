import 'package:flutter/material.dart';

class CustomSingleChildScrollViewWithColumn extends StatelessWidget {
  const CustomSingleChildScrollViewWithColumn({
    Key? key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.spaceAround,
  }) : super(key: key);
  final List<Widget>? children;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: mainAxisAlignment,
            children: children ?? [],
          ),
        ),
      ),
    );
  }
}

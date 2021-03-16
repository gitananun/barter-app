import 'package:flutter/material.dart';

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({
    Key? key,
    required this.child,
    required this.minChildSize,
    required this.maxChildSize,
    required this.initialChildSize,
  }) : super(key: key);
  final Widget child;
  final double minChildSize;
  final double maxChildSize;
  final double initialChildSize;

  @override
  Widget build(BuildContext context) {
    /// The advantage of the custom widget is that
    /// The [child] widget inside the sheet will have proper height

    return DraggableScrollableSheet(
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      initialChildSize: initialChildSize,
      builder: (BuildContext context, ScrollController scrollController) => CustomScrollView(
        controller: scrollController,
        slivers: [SliverFillRemaining(hasScrollBody: false, child: child)],
      ),
    );
  }
}

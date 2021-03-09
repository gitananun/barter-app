import 'package:flutter/material.dart';

class SingleProductDetailsDraggableScrollableSheet extends StatelessWidget {
  const SingleProductDetailsDraggableScrollableSheet(this.child, {Key? key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.6,
      initialChildSize: 0.7,
      builder: (BuildContext context, ScrollController scrollController) => CustomScrollView(
        controller: scrollController,
        slivers: [SliverFillRemaining(child: child, hasScrollBody: false)],
      ),
    );
  }
}

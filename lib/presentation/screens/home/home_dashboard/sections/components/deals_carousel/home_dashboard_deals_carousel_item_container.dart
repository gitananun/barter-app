import 'package:flutter/material.dart';

class HomeDashboardDealsCarouselItemContainer extends StatelessWidget {
  const HomeDashboardDealsCarouselItemContainer({Key? key, required this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(color: _themeData.cardColor, borderRadius: BorderRadius.circular(25)),
      child: child,
    );
  }
}

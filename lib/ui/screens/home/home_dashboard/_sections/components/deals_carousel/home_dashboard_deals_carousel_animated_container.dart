import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeDashboardDealsCarouselAnimatedContainer extends StatelessWidget {
  const HomeDashboardDealsCarouselAnimatedContainer(this.child,
      {Key key, @required this.height, @required this.opacity})
      : super(key: key);
  final Widget child;
  final double height;
  final double opacity;

  final Duration _duration = SharedStyle.animationDuration;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return AnimatedOpacity(
      duration: _duration,
      opacity: opacity,
      child: AnimatedContainer(
        child: child,
        height: height,
        width: size.width,
        duration: _duration,
        alignment: Alignment.topCenter,
      ),
    );
  }
}

library slider_indicators;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
part 'single_indicator.dart';

class SliderIndicators extends StatelessWidget {
  const SliderIndicators(this.page, this.totalPages, {Key? key, this.singleIndicator}) : super(key: key);
  final int page;
  final int totalPages;
  final Widget? singleIndicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (int i = 0; i < totalPages; i++) singleIndicator ?? SingleIndicator(page == i)],
    );
  }
}

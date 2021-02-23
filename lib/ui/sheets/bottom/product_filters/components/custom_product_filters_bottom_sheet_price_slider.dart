import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetPriceSlider extends StatefulWidget {
  CustomProductFiltersBottomSheetPriceSlider({Key key}) : super(key: key);

  @override
  _CustomProductFiltersBottomSheetPriceSliderState createState() => _CustomProductFiltersBottomSheetPriceSliderState();
}

class _CustomProductFiltersBottomSheetPriceSliderState extends State<CustomProductFiltersBottomSheetPriceSlider> {
  double price = 20;
  final double _min = 10;
  final double _max = 100;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$${_min.floor()}', style: _themeData.textTheme.overline),
        Expanded(
          child: Slider(
            min: _min,
            max: _max,
            value: price,
            divisions: 10,
            label: "\$$price",
            activeColor: _themeData.primaryColor,
            inactiveColor: _themeData.accentColor.withAlpha(50),
            onChanged: (val) => setState(() => price = val),
          ),
        ),
        Text('\$${_max.floor()}', style: _themeData.textTheme.overline),
      ],
    );
  }
}

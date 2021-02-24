import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetPriceSlider extends StatefulWidget {
  CustomProductFiltersBottomSheetPriceSlider({Key key}) : super(key: key);

  @override
  _CustomProductFiltersBottomSheetPriceSliderState createState() => _CustomProductFiltersBottomSheetPriceSliderState();
}

class _CustomProductFiltersBottomSheetPriceSliderState extends State<CustomProductFiltersBottomSheetPriceSlider> {
  RangeValues _rangeValues = RangeValues(50, 100);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$${_rangeValues.start.floor()}', style: _themeData.textTheme.overline),
        Expanded(
          child: RangeSlider(
            min: 0,
            max: 200,
            values: _rangeValues,
            divisions: 10,
            activeColor: _themeData.primaryColor,
            inactiveColor: _themeData.accentColor.withAlpha(50),
            onChanged: (RangeValues newValues) => setState(() => _rangeValues = newValues),
          ),
        ),
        Text('\$${_rangeValues.end.floor()}', style: _themeData.textTheme.overline),
      ],
    );
  }
}

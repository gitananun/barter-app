import 'package:flutter/material.dart';

class CustomProductFiltersBottomSheetPriceRangeSlider extends StatefulWidget {
  CustomProductFiltersBottomSheetPriceRangeSlider({Key key}) : super(key: key);

  @override
  _CustomProductFiltersBottomSheetPriceRangeSliderState createState() =>
      _CustomProductFiltersBottomSheetPriceRangeSliderState();
}

class _CustomProductFiltersBottomSheetPriceRangeSliderState
    extends State<CustomProductFiltersBottomSheetPriceRangeSlider> {
  RangeValues _rangeValues = RangeValues(50, 100);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$${_rangeValues.start.floor()}', style: _themeData.textTheme.overline),
            Text('\$${_rangeValues.end.floor()}', style: _themeData.textTheme.overline),
          ],
        ),
        RangeSlider(
          min: 0,
          max: 200,
          divisions: 20,
          values: _rangeValues,
          activeColor: _themeData.primaryColor,
          inactiveColor: _themeData.accentColor.withAlpha(50),
          onChanged: (RangeValues newValues) => setState(() => _rangeValues = newValues),
        ),
      ],
    );
  }
}

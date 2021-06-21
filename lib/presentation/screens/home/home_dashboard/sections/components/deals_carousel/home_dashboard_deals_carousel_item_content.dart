import 'package:flutter/material.dart';

import '../../../../../../../paths.dart';
import '../../../../../../shared_widgets/custom_circular_container.dart';
import '../../../../../../shared_widgets/custom_flat_button.dart';

class HomeDashboardDealsCarouselItemContent extends StatelessWidget {
  const HomeDashboardDealsCarouselItemContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const HomeDashboardDealsCarouselItemContainerLeftSide(),
          Expanded(flex: 6, child: Image.asset('${Paths.DEALS_CAROUSEL_ASSETS}watches.png', fit: BoxFit.contain)),
        ],
      ),
    );
  }
}

/// Carousel Item left side
/// Wraps the main information about the deal
/// [Column] > [Column]
class HomeDashboardDealsCarouselItemContainerLeftSide extends StatelessWidget {
  const HomeDashboardDealsCarouselItemContainerLeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final TextStyle? _mainTextTheme = _themeData.textTheme.caption;

    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCircularContainer(
            bgColor: _themeData.errorColor,
            child: Text(
              'Boom',
              style: _mainTextTheme?.apply(color: Colors.white, fontWeightDelta: 4, fontSizeFactor: 0.6),
            ),
          ),

          ///
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Barter Now', style: _mainTextTheme?.apply(color: Colors.white, fontWeightDelta: 3)),
              Text(
                'Enjoy the best',
                style: _mainTextTheme?.apply(color: Colors.white, fontSizeDelta: -2),
              )
            ],
          ),

          ///
          CustomFlatButton(
            height: 35,
            minWidth: 80,
            color: Colors.white,
            child: Text("Let's Go", style: _mainTextTheme?.apply(fontWeightDelta: 1, fontSizeDelta: -3)),
          ),
        ],
      ),
    );
  }
}

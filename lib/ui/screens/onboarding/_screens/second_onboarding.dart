import 'package:barter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';

@immutable
class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding(this.currentPage, {Key key}) : super(key: key);
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    const Map<String, String> _info = {
      'title': 'Select favorite',
      'body': "Exclusively curated selection of best brands the palm of your hand..."
    };

    return OnBoardingLayout(
      currentPage: currentPage,
      section1: SvgPicture.asset(OnBoardingConstants.imgPath + '2nd_onboarding_illustration.svg', fit: BoxFit.contain),
      section2: Column(
        children: [
          Text(_info['title'], style: _themeData.textTheme.headline5),
          SizedBox(height: 10),
          Text(_info['body'], style: _themeData.textTheme.bodyText2, textAlign: TextAlign.center, maxLines: 4),
        ],
      ),
    );
  }
}

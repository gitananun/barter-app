import 'package:barter/paths.dart';
import 'package:barter/ui/shared_widgets/indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';
import 'package:barter/ui/shared_widgets/circular_button.dart';

@immutable
class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({Key key}) : super(key: key);

  final String _imagesPath = Paths.ASSETS_IMAGES + 'onboarding/';

  @override
  Widget build(BuildContext context) {
    return OnBoardingLayout([
      SvgPicture.asset(_imagesPath + 'welcome_top.svg', fit: BoxFit.cover),
      SvgPicture.asset(_imagesPath + '1st_onboarding_illustration.svg', fit: BoxFit.contain),
      CustomIndicators(0),
      Text('What you have?'),
      Text('description'),
      CustomCircularButton(
        child: Icon(Icons.navigate_next),
      ),
    ]);
  }
}

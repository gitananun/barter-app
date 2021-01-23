import 'package:barter/constants.dart';
import 'package:barter/ui/shared_widgets/indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';

@immutable
class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding(this.currentPage, {Key key}) : super(key: key);
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    const Map<String, String> _info = {
      'title': 'What you have?',
      'body': "Let\'s estimate the overall cost of the things, that are not important for you"
    };

    return OnBoardingLayout([
      Expanded(
        flex: 3,
        child: SvgPicture.asset(OnBoardingConstants.imgPath + '1st_onboarding_illustration.svg', fit: BoxFit.contain),
      ),
      Expanded(flex: 1, child: CustomIndicators(currentPage)),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            Text(_info['title'], style: _themeData.textTheme.headline5),
            SizedBox(height: 10),
            Text(_info['body'], style: _themeData.textTheme.bodyText2, textAlign: TextAlign.center, maxLines: 4),
          ],
        ),
      ),
    ]);
  }
}

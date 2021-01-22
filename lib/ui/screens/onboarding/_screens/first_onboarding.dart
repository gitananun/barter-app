import 'package:barter/paths.dart';
import 'package:barter/ui/shared_widgets/indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';
import 'package:barter/ui/shared_widgets/circular_button.dart';
import 'package:barter/ui/ui_helper.dart';

@immutable
class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding(this.currentPage, {Key key}) : super(key: key);
  final int currentPage;

  final String _imagesPath = Paths.ASSETS_IMAGES + 'onboarding/';

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    const Widget _spaceBetweenBox = const SizedBox(height: 10);

    return OnBoardingLayout([
      SvgPicture.asset(_imagesPath + 'welcome_top.svg', fit: BoxFit.contain),
      SvgPicture.asset(_imagesPath + '1st_onboarding_illustration.svg', fit: BoxFit.contain),
      CustomIndicators(currentPage),
      _spaceBetweenBox,
      Text('What you have?', style: _themeData.textTheme.headline5),
      Text(
        'Let\'s estimate the overall cost of the things, that are not important for you',
        style: _themeData.textTheme.bodyText2,
        textAlign: TextAlign.center,
        maxLines: 4,
      ),
      _spaceBetweenBox,
      CustomCircularButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.navigate_next, size: OnBoardingStyle.nextBtnIconSize, color: Colors.white),
        ),
        color: _themeData.primaryColor,
        splashColor: _themeData.accentColor,
        onTap: () => {},
      ),
    ]);
  }
}

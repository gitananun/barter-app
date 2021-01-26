import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_image.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title_vertical_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barter/ui/screens/onboarding/_sections/onboarding_notifications_section.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';

@immutable
class ThirdOnboarding extends StatefulWidget {
  const ThirdOnboarding({Key key}) : super(key: key);

  @override
  _ThirdOnboardingState createState() => _ThirdOnboardingState();
}

class _ThirdOnboardingState extends State<ThirdOnboarding> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingLayout(
      section1: OnBoardingContentImage('3rd_onboarding_illustration.svg'),
      section2: Column(
        children: [
          OnBoardingContentTitle(
            'Notifications help you being active ✌🏻',
            textStyle: Theme.of(context).textTheme.headline6,
          ),
          onBoardingContentVerticalSpace,
          SizedBox(height: 5),
          OnBoardingNotificationsSection(),
        ],
      ),
    );
  }
}

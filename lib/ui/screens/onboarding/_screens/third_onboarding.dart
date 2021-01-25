import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_image.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title_vertical_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';

@immutable
class ThirdOnboarding extends StatefulWidget {
  const ThirdOnboarding(this.currentPage, {Key key}) : super(key: key);
  final int currentPage;
  @override
  _ThirdOnboardingState createState() => _ThirdOnboardingState();
}

class _ThirdOnboardingState extends State<ThirdOnboarding> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    const Map<String, String> _info = {
      'title': 'Always active',
      'body': "Notifications that will help you be more active  ✌🏻"
    };

    return OnBoardingLayout(
      currentPage: widget.currentPage,
      section1: OnBoardingContentImage('3rd_onboarding_illustration.svg'),
      section2: Column(
        children: [
          OnBoardingContentTitle(_info['title']),
          onBoardingContentVerticalSpace,
          CupertinoSwitch(
            value: _switchValue,
            onChanged: (value) => setState(() => _switchValue = value),
          ),
        ],
      ),
    );
  }
}

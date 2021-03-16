import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_image.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_info.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title.dart';
import 'package:barter/ui/screens/onboarding/_shared_widgets/onboarding_content_title_vertical_space.dart';
import 'package:flutter/material.dart';

import 'package:barter/ui/screens/onboarding/layout/onboarding_layout.dart';

@immutable
class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Map<String, String> _info = {
      'title': 'What you have?',
      'body': "Let's estimate the overall cost of the things, that are not important for you"
    };

    return OnBoardingLayout(
      section1: const OnBoardingContentImage('1st_onboarding_illustration.svg'),
      section2: Column(
        children: [
          OnBoardingContentTitle(_info['title'] ?? ''),
          onBoardingContentVerticalSpace,
          OnBoardingContentInfo(_info['body'] ?? ''),
        ],
      ),
    );
  }
}

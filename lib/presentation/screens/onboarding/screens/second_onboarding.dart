import 'package:flutter/material.dart';

import '../layout/onboarding_layout.dart';
import '../shared_widgets/onboarding_content_image.dart';
import '../shared_widgets/onboarding_content_info.dart';
import '../shared_widgets/onboarding_content_title.dart';
import '../shared_widgets/onboarding_content_title_vertical_space.dart';

@immutable
class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Map<String, String> _info = {
      'title': 'Select favorite',
      'body': 'Exclusively curated selection of best brands the palm of your hand...'
    };

    return OnBoardingLayout(
      section1: const OnBoardingContentImage('2nd_onboarding_illustration.svg'),
      section2: Column(
        children: [
          OnBoardingContentTitle(_info['title']),
          onBoardingContentVerticalSpace,
          OnBoardingContentInfo(_info['body']),
        ],
      ),
    );
  }
}

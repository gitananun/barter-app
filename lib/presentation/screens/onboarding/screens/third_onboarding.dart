import 'package:barter/presentation/screens/onboarding/layout/onboarding_layout.dart';
import 'package:barter/presentation/screens/onboarding/sections/onboarding_notifications_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared_widgets/containers/custom_wrap_with_runspacing.dart';
import '../shared_widgets/onboarding_content_image.dart';
import '../shared_widgets/onboarding_content_title.dart';
import '../shared_widgets/onboarding_content_title_vertical_space.dart';

@immutable
class ThirdOnboarding extends StatefulWidget {
  const ThirdOnboarding({Key? key}) : super(key: key);

  @override
  _ThirdOnboardingState createState() => _ThirdOnboardingState();
}

class _ThirdOnboardingState extends State<ThirdOnboarding> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingLayout(
      section1: const OnBoardingContentImage('3rd_onboarding_illustration.svg'),
      section2: CustomWrapWithRunSpacing(
        children: [
          const OnBoardingContentTitle('Be notified ✌🏻'),
          onBoardingContentVerticalSpace,
          const OnBoardingNotificationsSection(),
        ],
      ),
    );
  }
}

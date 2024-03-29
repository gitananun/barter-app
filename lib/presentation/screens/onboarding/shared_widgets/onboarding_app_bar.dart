import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../paths.dart';
import '../../../styles/onboarding/style.dart';

@immutable
class OnBoardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnBoardingAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(OnBoardingStyle.topAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const SizedBox(),
      title: SvgPicture.asset('${Paths.ONBOARDING_ASSETS}welcome_top.svg'),
    );
  }
}

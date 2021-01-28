import 'package:barter/constants.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@immutable
class OnBoardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnBoardingAppBar({Key key}) : super(key: key);
  Size get preferredSize => const Size.fromHeight(OnBoardingStyle.topAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const SizedBox(),
      title: Container(
        child: SvgPicture.asset(
          OnBoardingConstants.imgPath + 'welcome_top.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

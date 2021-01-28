import 'package:barter/paths.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@immutable
class LogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LogoAppBar({Key key, this.leading}) : super(key: key);
  final Widget leading;
  Size get preferredSize => const Size.fromHeight(LoginStyle.topAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leading,
      title: SvgPicture.asset(Paths.ASSETS_IMAGES + 'logo.svg', fit: BoxFit.contain),
    );
  }
}

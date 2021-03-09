import 'package:barter/ui/mts_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarLeadingBackButton extends StatelessWidget {
  const CustomAppBarLeadingBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(FontAwesomeIcons.chevronLeft, color: MTStheme.primaryTextColor),
      onTap: () => Navigator.pop(context),
    );
  }
}

import 'package:barter/ui/shared_widgets/buttons/custom_app_bar_leading_circular_icon_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarLeadingBackButton extends StatelessWidget {
  const CustomAppBarLeadingBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarLeadingCircularIconButton(
      icon: FontAwesomeIcons.chevronLeft,
      onPressed: () => Navigator.pop(context),
      margin: EdgeInsets.only(left: SharedStyle.contentPadding.horizontal / 2),
    );
  }
}

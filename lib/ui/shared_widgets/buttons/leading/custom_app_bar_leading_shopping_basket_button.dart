import 'package:barter/ui/shared_widgets/buttons/custom_app_bar_leading_circular_icon_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarLeadingShoppingBasketButton extends StatelessWidget {
  const CustomAppBarLeadingShoppingBasketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarLeadingCircularIconButton(
      width: 40,
      icon: FontAwesomeIcons.shoppingBag,
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.only(right: SharedStyle.contentPadding.horizontal / 2),
    );
  }
}

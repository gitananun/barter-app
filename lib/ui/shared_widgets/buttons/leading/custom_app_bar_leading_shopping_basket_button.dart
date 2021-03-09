import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarLeadingShoppingBasketButton extends StatelessWidget {
  const CustomAppBarLeadingShoppingBasketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: SharedStyle.contentPadding.horizontal / 2),
        child: Icon(
          FontAwesomeIcons.shoppingBag,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

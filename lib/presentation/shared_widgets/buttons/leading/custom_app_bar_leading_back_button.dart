import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarLeadingBackButton extends StatelessWidget {
  const CustomAppBarLeadingBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(FontAwesomeIcons.chevronLeft, color: Theme.of(context).primaryColor),
    );
  }
}

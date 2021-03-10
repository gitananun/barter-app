import 'package:barter/ui/shared_widgets/buttons_groups/custom_primary_buttons_row.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationAppBarWithButtonsRow extends StatelessWidget {
  const CustomBottomNavigationAppBarWithButtonsRow({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: SharedStyle.contentPadding.copyWith(top: 0),
      child: CustomPrimaryButtonsRow(text1: text1, text2: text2),
    );
  }
}

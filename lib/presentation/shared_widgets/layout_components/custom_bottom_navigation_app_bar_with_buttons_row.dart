import 'package:flutter/material.dart';

import '../../styles/types/edge_insets/edge_insets_style.dart';
import '../buttons_groups/custom_primary_buttons_row.dart';

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
      padding: EdgeInsetsStyle.contentPadding.copyWith(top: 0),
      child: CustomPrimaryButtonsRow(text1: text1, text2: text2),
    );
  }
}

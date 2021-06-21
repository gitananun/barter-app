import 'package:flutter/material.dart';

import 'custom_bottom_sheet_title_divider.dart';
import 'custom_bottom_sheet_title_text.dart';

class CustomBottomSheetTitleWithDivider extends StatelessWidget {
  const CustomBottomSheetTitleWithDivider({Key? key, this.title = ''}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBottomSheetTitleText(title),
        const CustomBottomSheetTitleDivider(),
      ],
    );
  }
}

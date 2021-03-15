import 'package:barter/ui/shared_widgets/sheets/bottom/custom_bottom_sheet_title_divider.dart';
import 'package:barter/ui/shared_widgets/sheets/bottom/custom_bottom_sheet_title_text.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetTitleWithDivider extends StatelessWidget {
  const CustomBottomSheetTitleWithDivider({Key? key, this.title = ''}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBottomSheetTitleText(title),
        CustomBottomSheetTitleDivider(),
      ],
    );
  }
}

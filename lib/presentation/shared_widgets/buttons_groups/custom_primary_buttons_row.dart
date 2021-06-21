import 'package:flutter/material.dart';

import '../../styles/types/widget/widget_style.dart';
import '../custom_flat_button.dart';

class CustomPrimaryButtonsRow extends StatelessWidget {
  const CustomPrimaryButtonsRow({Key? key, this.text1 = 'Chat', this.text2 = 'Barter'}) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomFlatButton(text: text1)),
        WidgetStyle.buttonsRowMarginBetween,
        Expanded(child: CustomFlatButton(text: text2)),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../styles/types/widget/widget_style.dart';
import '../custom_flat_button.dart';

class CustomCancelApplyButtonsRow extends StatelessWidget {
  const CustomCancelApplyButtonsRow({Key? key, this.cancelText = 'Cancel', this.applyText = 'Apply'}) : super(key: key);
  final String cancelText;
  final String applyText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomFlatButton(text: cancelText, primary: false)),
        WidgetStyle.buttonsRowMarginBetween,
        Expanded(child: CustomFlatButton(text: applyText)),
      ],
    );
  }
}

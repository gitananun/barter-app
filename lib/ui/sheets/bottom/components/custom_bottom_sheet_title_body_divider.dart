import 'package:flutter/material.dart';

class CustomBottomSheetTitleBodyDivider extends StatelessWidget {
  const CustomBottomSheetTitleBodyDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Divider(), width: 50);
  }
}

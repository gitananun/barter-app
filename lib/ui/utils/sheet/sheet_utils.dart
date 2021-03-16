import 'package:flutter/material.dart';

class SheetUtils {
  /// show configured modalBottomSheet
  static void showBottomSheet(BuildContext context, Widget sheet) {
    showModalBottomSheet<Widget>(
      context: context,
      isScrollControlled: true,
      builder: (context) => sheet,
      backgroundColor: Colors.transparent,
    );
  }
}

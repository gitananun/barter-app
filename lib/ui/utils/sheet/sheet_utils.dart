import 'package:flutter/material.dart';

class SheetUtils {
  /// show configured modalBottomSheet
  static void showBottomSheet(BuildContext context, Widget sheet) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => sheet,
      backgroundColor: Colors.transparent,
    );
  }
}

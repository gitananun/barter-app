import 'package:flutter/material.dart';

class CustomNavigators {
  static void singleProduct(BuildContext context, int id) {
    Navigator.maybePop(context);
    Navigator.pushNamed(context, '/product', arguments: id);
  }
}

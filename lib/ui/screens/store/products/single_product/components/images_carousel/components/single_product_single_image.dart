import 'package:barter/paths.dart';

import 'package:flutter/material.dart';

class SingleProductSingleImage extends StatelessWidget {
  const SingleProductSingleImage(this.image, {Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) => Image.asset(Paths.PRODUCTS_ASSETS + image, fit: BoxFit.contain);
}

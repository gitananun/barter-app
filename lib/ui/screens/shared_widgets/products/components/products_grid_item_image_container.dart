import 'package:barter/paths.dart';
import 'package:flutter/material.dart';

class ProductsGridItemImageContainer extends StatelessWidget {
  const ProductsGridItemImageContainer(this.url, {Key? key}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Paths.PRODUCTS_ASSETS + url), fit: BoxFit.contain),
      ),
    );
  }
}

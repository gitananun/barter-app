import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/screens/home/store/products/single_product/components/layout/single_product_scaffold.dart';
import 'package:flutter/material.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen(this.product, {Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleProductScaffold(
      body: Text(product.title),
    );
  }
}

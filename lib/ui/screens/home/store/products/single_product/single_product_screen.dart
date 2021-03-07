import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/screens/home/store/products/single_product/components/layout/single_product_scaffold.dart';
import 'package:barter/ui/screens/home/store/products/single_product/components/images_carousel/single_product_images_carousel.dart';
import 'package:flutter/material.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen(this.product, {Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleProductScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: SingleProductImagesCarousel()),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text('123'),
            ),
          ),
        ],
      ),
    );
  }
}

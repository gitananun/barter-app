import 'package:barter/models/store/product/product.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/single_product_details_container.dart';
import 'package:barter/ui/screens/store/products/single_product/components/images_carousel/single_product_images_carousel.dart';
import 'package:barter/ui/screens/store/products/single_product/components/layout/single_product_content_layout.dart';
import 'package:barter/ui/screens/store/products/single_product/components/layout/single_product_scaffold.dart';

import 'package:flutter/material.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen(this.product, {Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleProductScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleProductContentLayout(
          section1: SingleProductImagesCarousel(),
          section2: SingleProductDetailsContainer(),
        ),
      ),
    );
  }
}

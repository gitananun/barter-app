import 'package:barter/domain/models/store/product/product.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/single_product_details_container.dart';
import 'package:barter/ui/screens/store/products/single_product/components/images_carousel/components/single_product_single_image.dart';
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
      body: SingleProductContentLayout(
        ///
        section1: product.images!.length != 1
            ? SingleProductImagesCarousel(product.images)
            : SingleProductSingleImage(product.images![0]),

        ///
        section2: SingleProductDetailsContainer(
          likes: product.likes,
          title: product.title,
          rating: product.rating,
          location: product.location,
          description: product.description,
          condition: product.specifications.condition.condition,
        ),
      ),
    );
  }
}

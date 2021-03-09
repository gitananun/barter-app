import 'package:barter/ui/screens/store/products/single_product/components/images_carousel/components/single_product_carousel_image.dart';
import 'package:flutter/material.dart';

class SingleProductSingleImage extends StatelessWidget {
  const SingleProductSingleImage(this.image, {Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleProductCarouselImage(image: image, active: false),
    );
  }
}

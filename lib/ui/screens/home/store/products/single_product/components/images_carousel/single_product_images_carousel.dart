import 'package:barter/ui/screens/home/store/products/single_product/components/images_carousel/components/single_product_carousel_image.dart';
import 'package:barter/ui/screens/home/store/products/single_product/components/images_carousel/single_product_images_carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SingleProductImagesCarousel extends StatelessWidget {
  const SingleProductImagesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: singleProductImagesCarouselOptions,
      items: ['iphone.png', 'iphone.png', 'iphone.png']
          .map((i) => Builder(builder: (BuildContext context) => SingleProductCarouselImage(image: i)))
          .toList(),
    );
  }
}

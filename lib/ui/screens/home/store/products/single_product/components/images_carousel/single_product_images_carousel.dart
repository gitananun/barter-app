import 'package:barter/paths.dart';
import 'package:barter/ui/screens/home/store/products/single_product/components/images_carousel/single_product_images_carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SingleProductImagesCarousel extends StatelessWidget {
  const SingleProductImagesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: singleProductImagesCarouselOptions,
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(
                  Paths.PRODUCTS_ASSETS + 'iphone.png',
                  fit: BoxFit.contain,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(25),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

import 'package:barter/ui/screens/store/products/single_product/components/images_carousel/components/single_product_carousel_image.dart';
import 'package:barter/ui/screens/store/products/single_product/components/images_carousel/single_product_images_carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SingleProductImagesCarousel extends StatefulWidget {
  SingleProductImagesCarousel({Key? key}) : super(key: key);

  @override
  _SingleProductImagesCarouselState createState() => _SingleProductImagesCarouselState();
}

class _SingleProductImagesCarouselState extends State<SingleProductImagesCarousel> {
  final CarouselController _customCarouselController = CarouselController();
  final List<String> _images = ['iphone.png', 'ps.png', 'tesla.png'];
  Map<int, String> _imagesMap = {};
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _imagesMap = _images.asMap();
  }

  void _onPageChanged(int id, _) => setState(() => _activePage = id);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: singleProductImagesCarouselOptions(_onPageChanged),
      carouselController: _customCarouselController,
      items: _imagesMap
          .map(
            (int i, String path) => MapEntry(
              i,
              Builder(
                builder: (BuildContext context) => SingleProductCarouselImage(
                  image: path,
                  active: i == _activePage,
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}

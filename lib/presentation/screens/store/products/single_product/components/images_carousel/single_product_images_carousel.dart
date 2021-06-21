import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'components/single_product_carousel_image.dart';
import 'single_product_images_carousel_options.dart';

class SingleProductImagesCarousel extends StatefulWidget {
  const SingleProductImagesCarousel(this.images, {Key? key}) : super(key: key);
  final List<String>? images;

  @override
  _SingleProductImagesCarouselState createState() => _SingleProductImagesCarouselState();
}

class _SingleProductImagesCarouselState extends State<SingleProductImagesCarousel> {
  final CarouselController _customCarouselController = CarouselController();
  Map<int, String> _imagesMap = {};
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _imagesMap = widget.images!.asMap();
  }

  void _onPageChanged(int id, dynamic _) => setState(() => _activePage = id);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _customCarouselController,
      options: singleProductImagesCarouselOptions(_onPageChanged),
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

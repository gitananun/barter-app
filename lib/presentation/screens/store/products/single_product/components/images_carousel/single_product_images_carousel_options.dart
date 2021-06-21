import 'package:carousel_slider/carousel_options.dart';

CarouselOptions singleProductImagesCarouselOptions(
  Function(int index, CarouselPageChangedReason reason)? onPageChanged,
) =>
    CarouselOptions(
      autoPlay: true,
      viewportFraction: 0.5,
      enlargeCenterPage: true,
      onPageChanged: onPageChanged,
    );

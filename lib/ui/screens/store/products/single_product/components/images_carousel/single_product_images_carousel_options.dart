import 'package:carousel_slider/carousel_options.dart';

CarouselOptions singleProductImagesCarouselOptions(
  Function(int index, CarouselPageChangedReason reason)? onPageChanged,
) =>
    CarouselOptions(
      autoPlay: true,
      initialPage: 0,
      viewportFraction: 0.5,
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      onPageChanged: onPageChanged,
    );

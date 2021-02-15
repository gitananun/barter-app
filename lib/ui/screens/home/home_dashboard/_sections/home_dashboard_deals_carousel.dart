import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_content.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeDashboardDealsCarousel extends StatelessWidget {
  const HomeDashboardDealsCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: homeDashboardDealsCarouselOptions,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return HomeDashboardDealsCarouselItemContainer(
                child: HomeDashboardDealsCarouselItemContent(),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

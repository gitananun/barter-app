import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_animated_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_content.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_options.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_with_content_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeDashboardDealsCarouselSection extends StatelessWidget {
  const HomeDashboardDealsCarouselSection({Key key, @required this.closeTopContainer}) : super(key: key);
  final bool closeTopContainer;

  @override
  Widget build(BuildContext context) {
    final double _containerHeight = closeTopContainer ? 0 : MediaQuery.of(context).size.width * 0.65;
    final double _opacity = closeTopContainer ? 0 : 1;

    return HomeDashboardDealsCarouselAnimatedContainer(
      HomeDashboardSectionTitleWithContentWrapper(
        children: [
          HomeDashboardSectionTitleRow(title: 'Hot suggestions', moreText: 'see more'),
          CarouselSlider(
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
        ],
      ),
      opacity: _opacity,
      height: _containerHeight,
    );
  }
}

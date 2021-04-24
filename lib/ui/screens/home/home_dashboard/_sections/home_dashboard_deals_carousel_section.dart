import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_container.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_item_content.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/deals_carousel/home_dashboard_deals_carousel_options.dart';
import 'package:barter/ui/screens/shared_widgets/sections/dashboard_section_title_row.dart';
import 'package:barter/ui/screens/shared_widgets/sections/dashboard_section_title_with_content_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeDashboardDealsCarouselSection extends StatelessWidget {
  const HomeDashboardDealsCarouselSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardSectionTitleWithContentWrapper(
      children: [
        const DashboardSectionTitleRow(title: 'Hot suggestions', moreText: 'see more'),
        CarouselSlider(
          options: homeDashboardDealsCarouselOptions,
          items: [1, 2, 3]
              .map(
                (i) => Builder(
                  builder: (BuildContext context) => const HomeDashboardDealsCarouselItemContainer(
                    child: HomeDashboardDealsCarouselItemContent(),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../domain/data/mock/products.dart';
import '../../../shared_widgets/products/main_products_grid.dart';
import '../../../shared_widgets/sections/dashboard_section_title_row.dart';
import '../../../shared_widgets/sections/dashboard_section_title_with_content_wrapper.dart';

class HomeDashboardProductsGridSection extends StatelessWidget {
  const HomeDashboardProductsGridSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardSectionTitleWithContentWrapper(
      children: [
        const DashboardSectionTitleRow(title: 'Best Offers'),
        MainProductsGrid(products: MockProducts),
      ],
    );
  }
}

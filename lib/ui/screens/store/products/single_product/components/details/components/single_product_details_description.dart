import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsDescription extends StatelessWidget {
  const SingleProductDetailsDescription(this.description, {Key? key}) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeDashboardSectionTitleRow(title: 'Description', moreText: 'see more'),
        SingleProductStyle.commonVerticalSpace,
        SingleChildScrollView(
          child: Text(
            description,
            style: Theme.of(context).textTheme.overline,
          ),
        ),
      ],
    );
  }
}

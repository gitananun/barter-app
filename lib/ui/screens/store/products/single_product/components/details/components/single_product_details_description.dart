import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsDescription extends StatelessWidget {
  const SingleProductDetailsDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeDashboardSectionTitleRow(title: 'Description', moreText: 'see more'),
        SingleProductStyle.commonVerticalSpace,
        SingleChildScrollView(
          child: Text(
            'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
      ],
    );
  }
}

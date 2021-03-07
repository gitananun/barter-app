import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/shared_widgets/buttons_groups/custom_primary_buttons_row.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsContainer extends StatelessWidget {
  SingleProductDetailsContainer({Key? key}) : super(key: key);
  final Radius _radius = Radius.circular(SingleProductStyle.commonBorderRadius);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Text('title'),
                    Text('stars'),
                  ],
                ),
                Text('favorite'),
              ],
            ),
            color: Colors.orange,
          ),
          Container(
            child: Text('Details different menus'),
            color: Colors.green,
          ),
          Container(
            child: Column(
              children: [
                HomeDashboardSectionTitleRow(title: 'Description', moreText: 'see more'),
                Text('Full description text with all'),
              ],
            ),
            color: Colors.grey,
          ),
          Container(
            color: Colors.cyan,
            child: Row(
              children: [
                Text('refurbished'),
                Text('likes'),
              ],
            ),
          ),
          CustomPrimaryButtonsRow(text1: 'Chat', text2: 'Barter'),
        ],
      ),

      ///
      padding: SharedStyle.contentPadding.copyWith(top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [SharedStyle.mainBoxShadow],
        borderRadius: BorderRadius.only(topLeft: _radius, topRight: _radius),
      ),
    );
  }
}

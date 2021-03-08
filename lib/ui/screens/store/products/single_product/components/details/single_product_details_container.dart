import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/shared_widgets/buttons_groups/custom_primary_buttons_row.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProductDetailsContainer extends StatelessWidget {
  SingleProductDetailsContainer({Key? key}) : super(key: key);
  final Radius _radius = Radius.circular(SingleProductStyle.commonBorderRadius);
  final Widget _space = SizedBox(height: 5);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Galaxy Note 20 Ultra',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    _space,
                    Wrap(
                      spacing: 5,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: Theme.of(context).textTheme.subtitle2?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: Theme.of(context).textTheme.subtitle2?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: Theme.of(context).textTheme.subtitle2?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: Theme.of(context).textTheme.subtitle2?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: Theme.of(context).textTheme.subtitle2?.fontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Text('favorite'),
              ],
            ),
          ),
          Container(
            child: Text('Details different menus'),
            color: Colors.green,
          ),
          Column(
            children: [
              HomeDashboardSectionTitleRow(title: 'Description', moreText: 'see more'),
              _space,
              Text(
                'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
          Row(
            children: [
              Text('refurbished '),
              Text(' likes'),
            ],
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

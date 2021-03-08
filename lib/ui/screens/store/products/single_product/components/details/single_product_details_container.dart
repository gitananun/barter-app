import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_circular_icon.dart';
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
                        for (int i = 0; i < 5; i++)
                          Icon(
                            FontAwesomeIcons.solidStar,
                            size: Theme.of(context).textTheme.subtitle2?.fontSize,
                            color: Theme.of(context).primaryColor,
                          ),
                      ],
                    ),
                  ],
                ),
                SingleProductDetailsCircularIcon(FontAwesomeIcons.solidHeart)
              ],
            ),
          ),
          Container(child: Text('Details different menus')),
          Column(
            children: [
              HomeDashboardSectionTitleRow(title: 'Description', moreText: 'see more'),
              _space,
              SingleChildScrollView(
                child: Text(
                  'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  SingleProductDetailsCircularIcon(
                    FontAwesomeIcons.check,
                    padding: 5,
                    iconColor: Theme.of(context).primaryColor,
                    background: Theme.of(context).primaryColor.withOpacity(0.2),
                    size: Theme.of(context).textTheme.button?.apply(fontSizeDelta: -5).fontSize,
                  ),
                  SizedBox(width: 5),
                  Text('refurbished', style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  SingleProductDetailsCircularIcon(
                    FontAwesomeIcons.solidHeart,
                    padding: 5,
                    iconColor: Theme.of(context).errorColor,
                    background: Theme.of(context).errorColor.withOpacity(0.2),
                    size: Theme.of(context).textTheme.button?.apply(fontSizeDelta: -5).fontSize,
                  ),
                  SizedBox(width: 5),
                  Text('273 likes', style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
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

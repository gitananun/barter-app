import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_description.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_title_stars_favorite_row.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_specific_details_row.dart';
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
          SingleProductDetailsTitleStarsFavoriteRow(),
          Container(child: Text('Details different menus')),
          SingleProductDetailsDescription(),
          SingleProductSpecificDetailsRow(),
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

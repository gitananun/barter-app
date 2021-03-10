import 'package:barter/models/shared/location.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_location.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_description.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_details_title_stars_favorite_row.dart';
import 'package:barter/ui/screens/store/products/single_product/components/details/components/single_product_specific_details_row.dart';
import 'package:barter/ui/shared_widgets/sheets/custom_draggable_scrollable_sheet_with_decorated_container.dart';

import 'package:flutter/material.dart';

class SingleProductDetailsContainer extends StatelessWidget {
  SingleProductDetailsContainer({
    Key? key,
    required this.likes,
    required this.title,
    required this.rating,
    required this.location,
    required this.condition,
    required this.description,
  }) : super(key: key);
  final int likes;
  final String title;
  final double rating;
  final String condition;
  final Location location;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomDraggableScrollableSheetWithDecoratedContainer(
      minChildSize: 0.6,
      maxChildSize: 1.0,
      initialChildSize: 0.6,
      children: [
        SingleProductDetailsTitleStarsFavoriteRow(title: title, rating: rating),
        SingleProductDetailsDescription(description),
        SingleProductDetailsLocation(location),
        SingleProductSpecificDetailsRow(likes: likes, condition: condition),
      ],
    );
  }
}

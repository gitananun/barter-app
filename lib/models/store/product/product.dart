import 'package:barter/models/shared/location.dart';
import 'package:barter/models/store/product/specifications.dart';

class Product {
  final int id;
  final double? price;
  final String title;
  final double rating;
  final int? brandYear;
  final String? modelName;
  final Location location;
  final String description;
  final List<String?> images;
  final Specifications specificatiions;

  Product({
    this.price,
    this.modelName,
    this.brandYear,
    required this.id,
    required this.title,
    required this.rating,
    required this.images,
    required this.location,
    required this.description,
    required this.specificatiions,
  });
}

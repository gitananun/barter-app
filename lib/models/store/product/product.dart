import 'package:barter/models/shared/location.dart';
import 'package:barter/models/store/product/specifications.dart';

class Product {
  final int id;
  final int likes;
  final String title;
  final double? price;
  final double rating;
  final int? brandYear;
  final String? modelName;
  final Location location;
  final String description;
  final List<String>? images;
  final Specifications specifications;

  Product({
    this.price,
    this.likes = 0,
    this.modelName,
    this.brandYear,
    required this.id,
    required this.title,
    required this.rating,
    required this.images,
    required this.location,
    required this.description,
    required this.specifications,
  });
}

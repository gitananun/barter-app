import 'package:barter/models/store/product/specifications/category.dart';
import 'package:barter/models/store/product/specifications/color.dart';
import 'package:barter/models/store/product/specifications/state.dart';
import 'package:barter/models/store/product/specifications/weight.dart';

class Specifications {
  final Color? color;
  final Weight? weight;
  final Category category;
  final Condition condition;

  Specifications({
    this.color,
    this.weight,
    required this.category,
    required this.condition,
  });
}
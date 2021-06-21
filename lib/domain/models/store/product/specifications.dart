import 'specifications/category.dart';
import 'specifications/color.dart';
import 'specifications/state.dart';
import 'specifications/weight.dart';

class Specifications {
  Specifications({
    this.color,
    this.weight,
    required this.category,
    required this.condition,
  });

  final Color? color;
  final Weight? weight;
  final Category category;
  final Condition condition;
}

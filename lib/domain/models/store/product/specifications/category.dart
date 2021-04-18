import 'package:flutter/material.dart';

class Category {
  Category({
    this.icon,
    this.description,
    required this.title,
  });

  final String title;
  final IconData? icon;
  final String? description;
}

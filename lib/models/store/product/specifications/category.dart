import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData? icon;
  final String? description;

  Category({
    this.icon,
    this.description,
    required this.title,
  });
}

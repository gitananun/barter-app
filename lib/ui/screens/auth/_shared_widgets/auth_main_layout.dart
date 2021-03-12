import 'package:barter/ui/styles/types/edge_insets/edge_insets_style.dart';
import 'package:flutter/material.dart';

@immutable
class AuthMainLayout extends StatelessWidget {
  const AuthMainLayout({Key? key, required this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) => Padding(padding: EdgeInsetsStyle.contentPadding, child: child);
}

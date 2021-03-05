import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

@immutable
class AuthMainLayout extends StatelessWidget {
  const AuthMainLayout({Key? key, required this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) => Padding(padding: SharedStyle.contentPadding, child: child);
}

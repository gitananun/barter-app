import 'package:barter/ui/shared_widgets/layout_components/custom_main_layout_padding.dart';
import 'package:barter/ui/styles/types/double/double_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class HomeDashboardLayout extends StatelessWidget {
  const HomeDashboardLayout({Key? key, required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomMainLayoutPadding(
        child: Wrap(
          runSpacing: DoubleStyle.spaceBetweenSection,
          children: children ?? [],
        ),
      ),
    );
  }
}

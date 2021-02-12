import 'package:barter/ui/styles/home_dashboard/style.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class HomeDashboardLayout extends StatelessWidget {
  HomeDashboardLayout({Key key, @required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Padding(
        padding: HomeDashboardStyle.contentPadding,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Wrap(
                runSpacing: SharedStyle.spaceBetweenSection,
                runAlignment: WrapAlignment.start,
                children: children,
              ),
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';

class HomeDashboardScaffold extends StatelessWidget {
  const HomeDashboardScaffold({Key key, @required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body);
  }
}

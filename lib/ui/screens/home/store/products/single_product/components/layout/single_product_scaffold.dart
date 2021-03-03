import 'package:flutter/material.dart';

class SingleProductScaffold extends StatelessWidget {
  const SingleProductScaffold({Key key, @required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: AppBar(
        elevation: 0,
        primary: true,
        centerTitle: true,
        automaticallyImplyLeading: false,
        // title: HomeDashboardAppBarTitle(),
        backgroundColor: Colors.transparent,
        // actions: HomeDashboardAppBarActions(context).getActions(),
      ),
    );
  }
}

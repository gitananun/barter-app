import 'package:barter/ui/styles/single_product/style.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsContainer extends StatelessWidget {
  SingleProductDetailsContainer({Key? key}) : super(key: key);
  final Radius _radius = Radius.circular(SingleProductStyle.commonBorderRadius);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('123123123123123123'),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Theme.of(context).accentColor),
        boxShadow: [SharedStyle.mainBoxShadow],
        borderRadius: BorderRadius.only(topLeft: _radius, topRight: _radius),
      ),
    );
  }
}

import 'package:barter/ui/screens/home/store/products/single_product/components/layout/single_product_app_bar_title.dart';
import 'package:barter/ui/shared_widgets/buttons/leading/custom_app_bar_leading_back_button.dart';
import 'package:barter/ui/shared_widgets/buttons/leading/custom_app_bar_leading_shopping_basket_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class SingleProductScaffold extends StatelessWidget {
  const SingleProductScaffold({Key? key, required this.body}) : super(key: key);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: AppBar(
        elevation: 0,
        primary: true,
        centerTitle: true,
        title: SingleProductAppBarTitle(),
        backgroundColor: Colors.transparent,
        leading: CustomAppBarLeadingBackButton(),
        leadingWidth: SharedStyle.appBarLeadingWidth,
        actions: [CustomAppBarLeadingShoppingBasketButton()],
      ),
    );
  }
}

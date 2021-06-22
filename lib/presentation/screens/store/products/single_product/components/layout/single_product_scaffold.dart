import 'package:barter/presentation/shared_widgets/layout_components/custom_bottom_navigation_app_bar_with_buttons_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../shared_widgets/buttons/leading/custom_app_bar_leading_back_button.dart';
import '../../../../../../shared_widgets/buttons/leading/custom_app_bar_leading_shopping_basket_button.dart';
import 'single_product_app_bar_title.dart';

class SingleProductScaffold extends StatelessWidget {
  const SingleProductScaffold({Key? key, required this.body}) : super(key: key);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: const CustomBottomNavigationAppBarWithButtonsRow(
        text1: 'Chat',
        text2: 'Barter',
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const SingleProductAppBarTitle(),
        backgroundColor: Colors.transparent,
        leading: const CustomAppBarLeadingBackButton(),
        actions: const [CustomAppBarLeadingShoppingBasketButton()],
      ),
    );
  }
}

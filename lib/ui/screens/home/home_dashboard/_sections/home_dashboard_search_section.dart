import 'package:barter/ui/screens/shared_widgets/search/custom_search_input.dart';
import 'package:barter/ui/screens/shared_widgets/search/custom_search_qr_code_button.dart';
import 'package:flutter/material.dart';

class HomeDashboardSearchSection extends StatelessWidget {
  const HomeDashboardSearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(flex: 8, child: CustomSearchInput()),
        Expanded(
          flex: 2,
          child: CustomSearchQrCodeButton(onTap: () => Navigator.pushNamed(context, '/search')),
        ),
      ],
    );
  }
}

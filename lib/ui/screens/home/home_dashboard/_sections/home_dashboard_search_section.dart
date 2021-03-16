import 'package:barter/ui/screens/home/home_dashboard/_sections/components/search/home_dashboard_search_input.dart';
import 'package:barter/ui/screens/home/home_dashboard/_sections/components/search/home_dashboard_search_qr_code_button.dart';
import 'package:flutter/material.dart';

class HomeDashboardSearchSection extends StatelessWidget {
  const HomeDashboardSearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        HomeDashboardSearchInput(),
        HomeDashboardSearchQrCodeButton(),
      ],
    );
  }
}

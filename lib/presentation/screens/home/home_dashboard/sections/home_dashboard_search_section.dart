import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../shared_widgets/search/custom_search_input.dart';
import '../../../shared_widgets/search/custom_search_qr_code_button.dart';

class HomeDashboardSearchSection extends StatelessWidget {
  const HomeDashboardSearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(flex: 8, child: CustomSearchInput()),
        Expanded(
          flex: 2,
          child: CustomSearchQrCodeButton(onTap: HapticFeedback.mediumImpact),
        ),
      ],
    );
  }
}

import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDashboardSearchQrCodeButton extends StatelessWidget {
  const HomeDashboardSearchQrCodeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Expanded(
      flex: 2,
      child: CustomCircularContainer(
        alignment: Alignment.center,
        bgColor: _themeData.primaryColor,
        child: FaIcon(FontAwesomeIcons.qrcode, color: Colors.white),
      ),
    );
  }
}

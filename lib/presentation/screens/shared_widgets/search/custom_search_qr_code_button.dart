import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared_widgets/custom_circular_container.dart';

class CustomSearchQrCodeButton extends StatelessWidget {
  const CustomSearchQrCodeButton({Key? key, required this.onTap}) : super(key: key);
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: CustomCircularContainer(
        alignment: Alignment.center,
        bgColor: _themeData.primaryColor,
        child: const FaIcon(FontAwesomeIcons.qrcode, color: Colors.white),
      ),
    );
  }
}

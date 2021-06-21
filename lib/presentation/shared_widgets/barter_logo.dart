import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../paths.dart';

class BarterLogo extends StatelessWidget {
  const BarterLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('${Paths.ASSETS_IMAGES}logo.svg');
  }
}

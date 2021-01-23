import 'package:barter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingContentImage extends StatelessWidget {
  const OnBoardingContentImage(this.imgTitle, {Key key}) : super(key: key);
  final String imgTitle;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      OnBoardingConstants.imgPath + imgTitle,
      fit: BoxFit.contain,
    );
  }
}

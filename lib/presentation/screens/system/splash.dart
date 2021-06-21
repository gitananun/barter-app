import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int _splashDuration = 1400;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: _splashDuration), () => Navigator.pushReplacementNamed(context, '/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                '${Paths.ASSETS_IMAGES}logo.svg',
                width: MediaQuery.of(context).size.width - 250,
              ),
            ),
            Container(
              width: double.infinity,
              child: SvgPicture.asset('${Paths.SPLASH_ASSETS}waves.svg'),
            ),
          ],
        ),
      ),
    );
  }
}

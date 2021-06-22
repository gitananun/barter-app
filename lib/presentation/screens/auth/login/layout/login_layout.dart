import 'package:flutter/material.dart';

import '../../shared_widgets/auth_main_layout.dart';

@immutable
class LoginLayout extends StatelessWidget {
  const LoginLayout({
    Key? key,
    required this.section1,
    required this.section2,
    required this.section3,
  }) : super(key: key);

  final Widget? section1;
  final Widget? section2;
  final Widget? section3;

  @override
  Widget build(BuildContext context) {
    return AuthMainLayout(
      child: Column(
        children: [
          Expanded(child: section1 ?? const SizedBox()),
          Expanded(flex: 5, child: section2 ?? const SizedBox()),
          Expanded(flex: 4, child: section3 ?? const SizedBox()),
        ],
      ),
    );
  }
}
